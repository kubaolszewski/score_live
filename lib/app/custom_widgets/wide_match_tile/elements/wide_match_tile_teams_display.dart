import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';

class WideMatchTileTeamsDisplay extends StatelessWidget {
  const WideMatchTileTeamsDisplay({super.key, required this.match});

  final LiveMatchModel match;

  @override
  Widget build(BuildContext context) {
    final String homeTeamLogo =
        match.teams?.home?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String awayTeamLogo =
        match.teams?.away?.logo ?? 'https://img.freepik.com/free-vector/planet-earth_1308-82523.jpg?w=2000';
    final String homeTeamName = match.teams?.home?.name ?? context.localizations.unknownHomeTeam;
    final String awayTeamName = match.teams?.away?.name ?? context.localizations.unknownAwayTeam;
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Image(
                  width: 35,
                  height: 35,
                  image: NetworkImage(homeTeamLogo),
                ),
                const SizedBox(width: 10),
                Text(
                  homeTeamName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Image(
                  width: 35,
                  height: 35,
                  image: NetworkImage(awayTeamLogo),
                ),
                const SizedBox(width: 10),
                Text(
                  awayTeamName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
