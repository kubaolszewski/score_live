import 'package:flutter/material.dart';
import 'elements/live_match_details_button.dart';
import 'elements/live_match_tile_teams_display.dart';
import '../header_with_league_and_timer/header_with_league_and_timer.dart';
import '../../extensions/context/dimensions_context.dart';
import '../../../../models/match_model/match_model.dart';
import '../../../../presentation/constants/app_colors.dart';

class LiveMatchTile extends StatelessWidget {
  const LiveMatchTile({
    super.key,
    required this.liveMatch,
  });

  final MatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    double width = context.mediaQueryWidth;
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: AppColors.listTileGrey,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderWithLeagueAndTimer(liveMatch: liveMatch),
            LiveMatchTileTeamsDisplay(liveMatch: liveMatch),
            LiveMatchDetailsButton(liveMatch: liveMatch),
          ],
        ),
      ),
    );
  }
}
