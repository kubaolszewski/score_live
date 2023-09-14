import 'package:flutter/material.dart';
import 'elements/single_stat_display.dart';
import 'elements/teams_header.dart';
import '../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../common/extensions/stats/stats_getter_ext.dart';
import '../../../../../data/models/statistics_model/statistics_model.dart';
import '../../../../../common/constants/app_colors.dart';
import '../../../../../common/theme/custom_text_style.dart';

class MatchStatsTab extends StatelessWidget {
  const MatchStatsTab({super.key, required this.matchStats});

  final List<StatisticsModel> matchStats;

  @override
  Widget build(BuildContext context) {
    if (matchStats.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            context.localizations.noStats,
            textAlign: TextAlign.center,
            style: const CustomTextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
      );
    }

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
