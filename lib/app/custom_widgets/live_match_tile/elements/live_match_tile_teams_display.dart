import 'package:flutter/material.dart';
import 'package:score_live/models/live_match_model.dart';

class LiveMatchTileTeamsDisplay extends StatelessWidget {
  const LiveMatchTileTeamsDisplay({
    super.key,
    required this.liveMatch,
    required this.homeTeamLogo,
    required this.awayTeamLogo,
    required this.homeTeamName,
    required this.awayTeamName,
  });

  final LiveMatchModel liveMatch;
  final String homeTeamLogo;
  final String awayTeamLogo;
  final String homeTeamName;
  final String awayTeamName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: SizedBox(
        width: 370,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: SizedBox.square(
                dimension: 100.00,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: NetworkImage(homeTeamLogo, scale: 3),
                    ),
                    Text(homeTeamName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${liveMatch.goals!.home} -'
                    '${liveMatch.goals!.away}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox.square(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: NetworkImage(awayTeamLogo, scale: 3),
                    ),
                    Text(awayTeamName,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
