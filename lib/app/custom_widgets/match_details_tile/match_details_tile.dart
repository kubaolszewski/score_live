import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_widgets/match_goals_widget.dart';
import 'package:score_live/app/custom_widgets/match_league_and_timer_badge.dart';
import 'package:score_live/app/custom_widgets/match_details_tile/elements/match_result_display.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchDetailsTile extends StatelessWidget {
  const MatchDetailsTile({
    super.key,
    required this.leagueName,
    required this.liveMatch,
  });

  final String leagueName;
  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    double width = double.infinity;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: AppColors.listTileGrey,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              MatchLeagueAndTimerBadge(liveMatch: liveMatch),
              const SizedBox(height: 5),
              MatchResultDisplay(liveMatch: liveMatch),
              const SizedBox(height: 5),
              const Divider(color: Colors.grey, thickness: 0.5),
              const SizedBox(height: 5),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  return MatchGoalsWidget(liveMatch);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
