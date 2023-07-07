import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/live_match_tile.dart';
import 'package:score_live/app/features/home/home_widgets/live_now_view/cubit/live_now_view_cubit.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class LiveNowView extends StatelessWidget {
  const LiveNowView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LiveNowViewCubit, LiveNowViewState>(
      builder: (context, state) {
        if (state.isLoading == true) {
          return const Center(
            child: CircularProgressIndicator(
              color: AppColors.mainThemePink,
            ),
          );
        }

        final liveMatches = state.liveMatchModel;

        if (liveMatches!.isEmpty) {
          return const EmptyListPlaceholder('Nothing here');
        }
        return SizedBox(
          height: 250,
          child: ListView.builder(
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
