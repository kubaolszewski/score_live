import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/elements/live_match_details_button.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/elements/live_match_tile_logo.dart';
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
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            LiveMatchTileLogo(liveMatch: liveMatch),
            const SizedBox(height: 10),
            LiveMatchTileTeamsDisplay(liveMatch: liveMatch),
            const SizedBox(
              height: 20,
            ),
            LiveMatchDetailsButton(liveMatch: liveMatch)
          ],
        ),
      ),
    );
  }
}
