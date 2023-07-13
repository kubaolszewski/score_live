import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/custom_widgets/wide_match_tile/wide_match_tile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class ScoreTab extends StatelessWidget {
  const ScoreTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;
    return BlocBuilder<ScoreTabCubit, ScoreTabState>(
      builder: (context, state) {
        if (state is LoadingMatchesState) {
          return const Center(
              child: CircularProgressIndicator(
            color: AppColors.mainThemePink,
          ));
        }

        if (state is MatchesLoadedState) {
          final liveMatches = state.matches;

          if (liveMatches.isEmpty) {
            return const SizedBox(
              height: 200,
              child: Center(
                child: Text(
                  'No matches were played on this date.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            );
          }

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 15,
                      child: ClipOval(
                        child: SvgPicture.network(
                          liveMatches[0].league!.flag!,
                          fit: BoxFit.cover,
                          placeholderBuilder: (BuildContext context) => Container(
                            padding: const EdgeInsets.all(30.0),
                            child: const Center(
                              child: CircularProgressIndicator(
                                backgroundColor: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      liveMatches[0].league!.name!,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: width,
                height: height,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  itemCount: liveMatches.length,
                  itemBuilder: (context, index) {
                    final liveMatch = liveMatches[index];
                    return WideMatchListTile(
                      liveMatch: liveMatch,
                    );
                  },
                ),
              ),
            ],
          );
        }

        if (state is ErrorMatchesState) {
          return Center(child: Text(state.errorMessage, style: CommonTextStyles.basicWhiteText,));
        }

        return const SizedBox.shrink();
      },
    );
  }
}
