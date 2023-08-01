import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_stats_tab/elements/single_stat_display.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_stats_tab/elements/teams_header.dart';
import 'package:score_live/core/stats_getter_ext.dart';
import 'package:score_live/models/statistics_model/statistics_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchStatsTab extends StatelessWidget {
  const MatchStatsTab({super.key, required this.matchStats});

  final List<StatisticsModel> matchStats;

  @override
  Widget build(BuildContext context) {
    final shotsTotalSum = matchStats.homeShotsTotal + matchStats.awayShotsTotal;
    final shotsOnGoalSum = matchStats.homeShotsOnGoal + matchStats.awayShotsOnGoal;
    final foulsSum = matchStats.homeFouls + matchStats.awayFouls;
    final cornersSum = matchStats.homeCorners + matchStats.awayCorners;
    return Container(
      padding: const EdgeInsets.all(12.0),
      color: AppColors.listTileGrey,
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          TeamsHeader(homeTeamLogo: matchStats.homeTeamLogo, awayTeamLogo: matchStats.awayTeamLogo),
          const SizedBox(height: 31),
          SingleStatDisplay(
              homeTotalValue: matchStats.homeShotsTotal,
              awayTotalValue: matchStats.awayShotsTotal,
              valueName: matchStats.shotsTotal,
              totalValueSum: shotsTotalSum),
          SingleStatDisplay(
              homeTotalValue: matchStats.homeShotsOnGoal,
              awayTotalValue: matchStats.awayShotsOnGoal,
              valueName: matchStats.shotsOnGoal,
              totalValueSum: shotsOnGoalSum),
          SingleStatDisplay(
            homeTotalValue: matchStats.homeFouls,
            awayTotalValue: matchStats.awayFouls,
            valueName: matchStats.fouls,
            totalValueSum: foulsSum,
          ),
          SingleStatDisplay(
            homeTotalValue: matchStats.homeCorners,
            awayTotalValue: matchStats.awayCorners,
            valueName: matchStats.corners,
            totalValueSum: cornersSum,
          ),
          SingleStatDisplay(
            homeTotalValue: matchStats.homeBallPossession,
            awayTotalValue: matchStats.awayBallPossession,
            valueName: matchStats.ballPossession,
          ),
        ],
      ),
    );
  }
}
