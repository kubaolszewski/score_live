import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/elements/live_match_details_button.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/elements/live_match_tile_logo.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/elements/live_match_tile_teams_display.dart';
import 'package:score_live/models/live_match_model.dart';
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
    final String assetName = liveMatch.league?.flag ??
        'https://thumbs.dreamstime.com/b/handshake-vector-icon-black-illustration-isolated-graphic-web-design-business-contract-agreement-flat-symbol-white-98077091.jpg';
    final String leagueName = liveMatch.league?.name ?? 'Unknown league';
    final String homeTeamLogo =
        liveMatch.teams?.home?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String awayTeamLogo =
        liveMatch.teams?.away?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String homeTeamName = liveMatch.teams?.home?.name ?? 'Unknown home team';
    final String awayTeamName = liveMatch.teams?.away?.name ?? 'Unknown away team';
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
              LiveMatchTileLogo(liveMatch: liveMatch, assetName: assetName, leagueName: leagueName),
              const SizedBox(height: 10),
              LiveMatchTileTeamsDisplay(
                liveMatch: liveMatch,
                homeTeamLogo: homeTeamLogo,
                awayTeamLogo: awayTeamLogo,
                homeTeamName: homeTeamName,
                awayTeamName: awayTeamName,
              ),
              const SizedBox(
                height: 20,
              ),
              LiveMatchDetailsButton(liveMatch: liveMatch)
            ],
          ),
        ),
      ),
    );
  }
}
