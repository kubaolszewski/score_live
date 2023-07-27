import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_stats_tab/elements/stast_display_for_string_values.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_stats_tab/elements/stats_display_for_int_values.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_stats_tab/elements/teams_header.dart';
import 'package:score_live/models/statistics_model/statistics_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class MatchStatsTab extends StatelessWidget {
  const MatchStatsTab({super.key, required this.matchStats});

  final List<StatisticsModel> matchStats;

  @override
  Widget build(BuildContext context) {
    final String homeTeamLogo = matchStats[0].team?.logo ?? AppConstVariables.defaultTeamLogo;
    final String awayTeamLogo = matchStats[1].team?.logo ?? AppConstVariables.defaultTeamLogo;
    final String shotsTotal = matchStats[0].statistics?[2].type ?? AppConstVariables.stringPlaceholder;
    final int homeShotsTotal = matchStats[0].statistics?[2].value ?? AppConstVariables.intPlaceholder;
    final int awayShotsTotal = matchStats[1].statistics?[2].value ?? AppConstVariables.intPlaceholder;
    final int shotsTotalSum = homeShotsTotal + awayShotsTotal;
    final String shotsOnGoal = matchStats[0].statistics?[0].type ?? AppConstVariables.stringPlaceholder;
    final int homeShotsOnGoal = matchStats[0].statistics?[0].value ?? AppConstVariables.intPlaceholder;
    final int awayShotsOnGoal = matchStats[1].statistics?[0].value ?? AppConstVariables.intPlaceholder;
    final shotsOnGoalSum = homeShotsOnGoal + awayShotsOnGoal;
    final String fouls = matchStats[0].statistics?[6].type ?? AppConstVariables.stringPlaceholder;
    final int homeFouls = matchStats[0].statistics?[6].value ?? AppConstVariables.intPlaceholder;
    final int awayFouls = matchStats[1].statistics?[6].value ?? AppConstVariables.intPlaceholder;
    final foulsSum = homeFouls + awayFouls;
    final String corners = matchStats[0].statistics?[7].type ?? AppConstVariables.stringPlaceholder;
    final int homeCorners = matchStats[0].statistics?[7].value ?? AppConstVariables.intPlaceholder;
    final int awayCorners = matchStats[1].statistics?[7].value ?? AppConstVariables.intPlaceholder;
    final cornersSum = homeCorners + awayCorners;
    final String ballPossession = matchStats[0].statistics?[9].type ?? AppConstVariables.stringPlaceholder;
    final int homeBallPossession =
        matchStats[0].statistics?[9].filterBallPossession ?? AppConstVariables.intPlaceholder;
    final int awayBallPossession =
        matchStats[1].statistics?[9].filterBallPossession ?? AppConstVariables.intPlaceholder;

    return Container(
      padding: const EdgeInsets.all(12.0),
      color: AppColors.listTileGrey,
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          TeamsHeader(homeTeamLogo: homeTeamLogo, awayTeamLogo: awayTeamLogo),
          const SizedBox(height: 31),
          StatsDisplayForIntValues(
              homeTotalValue: homeShotsTotal,
              awayTotalValue: awayShotsTotal,
              valueName: shotsTotal,
              totalValueSum: shotsTotalSum),
          StatsDisplayForIntValues(
              homeTotalValue: homeShotsOnGoal,
              awayTotalValue: awayShotsOnGoal,
              valueName: shotsOnGoal,
              totalValueSum: shotsOnGoalSum),
          StatsDisplayForIntValues(
            homeTotalValue: homeFouls,
            awayTotalValue: awayFouls,
            valueName: fouls,
            totalValueSum: foulsSum,
          ),
          StatsDisplayForIntValues(
            homeTotalValue: homeCorners,
            awayTotalValue: awayCorners,
            valueName: corners,
            totalValueSum: cornersSum,
          ),
          StatsDisplayForStringValues(
            homeTotalValue: homeBallPossession,
            awayTotalValue: awayBallPossession,
            valueName: ballPossession,
          ),
        ],
      ),
    );
  }
}
