import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_h2h_tab/elements/last_matches_h2h_view.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_h2h_tab/elements/teams_h2h_ratio_view.dart';
import 'package:score_live/app/common/extensions/context/applocalization_context.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchH2HTab extends StatelessWidget {
  const MatchH2HTab({super.key, required this.match, required this.teamsH2h});

  final MatchModel match;
  final List<MatchModel> teamsH2h;

  @override
  Widget build(BuildContext context) {
    if (teamsH2h.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            context.localizations.noH2HComparison,
            textAlign: TextAlign.center,
            style: const CustomTextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
      );
    }

    return Container(
      color: AppColors.listTileGrey,
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          TeamsH2HRatioView(match: match, amountOfFixtures: teamsH2h.length),
          const SizedBox(height: 32),
          const Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          const SizedBox(height: 32),
          LastMatchesH2HView(teamsH2h: teamsH2h, amountOfFixtures: teamsH2h.length)
        ],
      ),
    );
  }
}
