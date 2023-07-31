import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_h2h_tab/elements/last_matches_h2h_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_h2h_tab/elements/teams_h2h_ratio_view.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchH2HTab extends StatelessWidget {
  const MatchH2HTab({super.key, required this.match, required this.teamsH2h});

  final LiveMatchModel match;
  final List<LiveMatchModel> teamsH2h;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.listTileGrey,
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          TeamsH2HRatioView(match: match),
          const SizedBox(height: 32),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          const SizedBox(height: 32),
          LastMatchesH2HView(teamsH2h: teamsH2h)
        ],
      ),
    );
  }
}
