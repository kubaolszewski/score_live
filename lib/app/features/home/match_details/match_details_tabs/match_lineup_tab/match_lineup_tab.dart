import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_lineup_tab/elements/line_ups_display.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';

class MatchLineUpTab extends StatelessWidget {
  const MatchLineUpTab({
    super.key,
    required this.liveMatch,
    required this.lineUps,
  });

  final LiveMatchModel liveMatch;
  final List<LineUpModel> lineUps;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LineUpsDisplay(lineUps: lineUps),
    );
  }
}
