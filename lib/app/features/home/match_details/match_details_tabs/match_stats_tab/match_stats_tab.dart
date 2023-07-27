import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_stats_tab/elements/teams_header.dart';
import 'package:score_live/models/statistics_model/statistics_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(homeShotsTotal.toString(),
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(shotsTotal,
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(awayShotsTotal.toString(),
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.mainThemePink),
                      height: 10,
                      width: homeShotsTotal / shotsTotalSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.statsBarGrey),
                      height: 10,
                      width: awayShotsTotal / shotsTotalSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(homeShotsOnGoal.toString(),
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(shotsOnGoal,
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(awayShotsOnGoal.toString(),
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.mainThemePink),
                      height: 10,
                      width: homeShotsOnGoal / shotsOnGoalSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.statsBarGrey),
                      height: 10,
                      width: awayShotsOnGoal / shotsOnGoalSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(homeFouls.toString(),
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(fouls, style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(awayFouls.toString(),
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.mainThemePink),
                      height: 10,
                      width: homeFouls / foulsSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.statsBarGrey),
                      height: 10,
                      width: awayFouls / foulsSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(homeCorners.toString(),
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(corners,
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(awayCorners.toString(),
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.mainThemePink),
                      height: 10,
                      width: homeCorners / cornersSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.statsBarGrey),
                      height: 10,
                      width: awayCorners / cornersSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${homeBallPossession.toString()}%',
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text(ballPossession,
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
              Text('${awayBallPossession.toString()}%',
                  style: const CustomTextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w700)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.mainThemePink),
                      height: 10,
                      width: homeBallPossession / AppConstVariables.ballPossessionSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Stack(
                  alignment: AlignmentDirectional.centerStart,
                  children: [
                    Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: Colors.grey),
                        height: 10,
                        width: AppConstVariables.statsBarWidth),
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(4), color: AppColors.statsBarGrey),
                      height: 10,
                      width: awayBallPossession / AppConstVariables.ballPossessionSum * AppConstVariables.statsBarWidth,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
