import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_lineup_tab/elements/teams_line_ups_display.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class MatchLineUpTab extends StatelessWidget {
  const MatchLineUpTab({
    super.key,
    required this.liveMatch,
    required this.lineUps,
  });

  final MatchModel liveMatch;
  final List<LineUpModel> lineUps;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: AppColors.listTileGrey,
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamsLineUpsDisplay(lineUps: lineUps, isHomeTeam: true),
              TeamsLineUpsDisplay(lineUps: lineUps, isHomeTeam: false),
            ],
          )
        ],
      ),
    );
  }
}
