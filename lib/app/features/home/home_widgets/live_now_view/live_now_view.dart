import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/live_match_tile.dart';
import 'package:score_live/app/features/home/home_widgets/live_now_view/cubit/live_now_view_cubit.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class LiveNowView extends StatelessWidget {
  const LiveNowView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveNowViewCubit, LiveNowViewState>(
      builder: (context, state) {
        if (state is LoadingMatchesState) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.mainThemePink,
            ),
          );
        }
        if (state is MatchesLoadedState) {
          final liveMatches = state.matches;

          if (liveMatches.isEmpty) {
            return const SizedBox(
              height: 200,
              child: Center(
                child: Text(
                  'Nothing here :(',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            );
          }
          return SizedBox(
            height: 250,
            child: ListView.builder(
              physics: const PageScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: liveMatches.length,
              itemBuilder: (context, index) {
                final liveMatch = liveMatches[index];
                return LiveMatchTile(
                  liveMatch: liveMatch,
                );
              },
            ),
          );
        }
        if (state is ErrorMatchesState) {
          return Center(
              child: Text(
            state.errorMessage,
            style: CommonTextStyles.basicWhiteText,
          ));
        }
        return const SizedBox.shrink();
      },
    );
  }
}

class EmptyListPlaceholder extends StatelessWidget {
  const EmptyListPlaceholder(
    this.information, {
    super.key,
  });

  final String information;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(
        child: Text(
          information,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
