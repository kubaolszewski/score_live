import 'package:flutter/material.dart';
import 'package:score_live/app/common/extensions/context/applocalization_context.dart';
import 'package:score_live/app/common/extensions/enums.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

import '/models/topscorers_model/top_scorers_model.dart';
import 'stats_sub_tabs/top_goals_sub_tab.dart';

class StatsTab extends StatelessWidget {
  const StatsTab({super.key, required this.topGoals, required this.topAssists, required this.statsSwitch});

  final StatsSwitch statsSwitch;
  final List<TopScorersModel> topGoals;
  final List<TopScorersModel> topAssists;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          const StatsHeaderWithSwitch(),
          const SizedBox(height: 20),
          topGoals.isEmpty
              ? SizedBox(
                  height: 200,
                  child: Center(
                    child: Text(
                      context.localizations.noStats,
                      textAlign: TextAlign.center,
                      style: const CustomTextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              : switch (statsSwitch) {
                  StatsSwitch.goals => TopGoalsSubTab(topGoals: topGoals),
                  //TODO: Implement TopAssistsSubTab
                  StatsSwitch.assists => const SizedBox(),
                },
        ],
      ),
    );
  }
}

class StatsHeaderWithSwitch extends StatelessWidget {
  const StatsHeaderWithSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppConstVariables.goalsHeader,
            style: CustomTextStyle(fontSize: 20, color: Colors.grey[400]!, fontWeight: FontWeight.w700),
          ),
          const Row(
            children: [
              // TODO: Replace with IconButton later
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 24,
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 24,
              ),
            ],
          )
        ],
      ),
    );
  }
}
