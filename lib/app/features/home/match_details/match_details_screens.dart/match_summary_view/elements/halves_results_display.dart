import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model.dart';

class FirstHalfResultDisplay extends StatelessWidget {
  const FirstHalfResultDisplay({super.key, required this.liveMatch});

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String homeTeamName = liveMatch.teams?.home?.name ?? 'Unknown home team';
    final String awayTeamName = liveMatch.teams?.away?.name ?? 'Unknown away team';
    final int halfTimeHomeGoals = liveMatch.score?.halftime?.home ?? 0;
    final int halfTimeAwayGoals = liveMatch.score?.halftime?.away ?? 0;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  context.localizations.halfTime,
                  style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$homeTeamName $halfTimeHomeGoals - '
                    '$halfTimeAwayGoals $awayTeamName',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecondfHalfResultDisplay extends StatelessWidget {
  const SecondfHalfResultDisplay({super.key, required this.liveMatch});

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    final String homeTeamName = liveMatch.teams?.home?.name ?? 'Unknown home team';
    final String awayTeamName = liveMatch.teams?.away?.name ?? 'Unknown away team';
    final int fullTimeHomeGoals = liveMatch.score?.fulltime?.home ?? 0;
    final int fullTimeAwayGoals = liveMatch.score?.fulltime?.away ?? 0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.localizations.fullTime,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$homeTeamName $fullTimeHomeGoals - '
                '$fullTimeAwayGoals $awayTeamName',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }
}
