import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/elements/live_match_details_button.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/elements/live_match_logo_and_timer.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/elements/live_match_tile_teams_display.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class LiveMatchTile extends StatelessWidget {
  const LiveMatchTile({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
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
            LiveMatchLogoAndTimer(liveMatch: liveMatch),
            LiveMatchTileTeamsDisplay(liveMatch: liveMatch),
            LiveMatchDetailsButton(liveMatch: liveMatch),
          ],
        ),
      ),
    );
  }
}
