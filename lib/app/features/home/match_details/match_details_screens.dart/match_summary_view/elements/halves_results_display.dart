import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model.dart';

class FirstHalfResultDisplay extends StatelessWidget {
  const FirstHalfResultDisplay({
    super.key,
    required this.liveMatch,
    required this.result,
    required this.homeTeamName,
    required this.awayTeamName,
  });

  final LiveMatchModel liveMatch;
  final String result;
  final String homeTeamName;
  final String awayTeamName;

  @override
  Widget build(BuildContext context) {
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
                  liveMatch.score?.halftime?.home == null || liveMatch.score?.halftime?.away == null
                      ? Text(
                          result,
                          textAlign: TextAlign.center,
                          style: const TextStyle(color: Colors.white, fontSize: 16),
                        )
                      : Text(
                          '$homeTeamName ${liveMatch.score!.halftime!.home} - '
                          '${liveMatch.score!.halftime!.away} $awayTeamName',
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
  const SecondfHalfResultDisplay(
      {super.key,
      required this.liveMatch,
      required this.result,
      required this.homeTeamName,
      required this.awayTeamName});

  final LiveMatchModel liveMatch;
  final String result;
  final String homeTeamName;
  final String awayTeamName;

  @override
  Widget build(BuildContext context) {
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
              liveMatch.score!.fulltime!.home == null || liveMatch.score!.fulltime!.away == null
                  ? Text(
                      result,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    )
                  : Text(
                      '$homeTeamName ${liveMatch.score!.fulltime!.home} - '
                      '${liveMatch.score!.fulltime!.away} $awayTeamName',
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