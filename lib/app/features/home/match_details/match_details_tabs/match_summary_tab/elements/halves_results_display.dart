import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class HalvesResultDisplay extends StatelessWidget {
  const HalvesResultDisplay({super.key, required this.liveMatch, required this.isFirstHalf});

  final LiveMatchModel liveMatch;
  final bool isFirstHalf;

  @override
  Widget build(BuildContext context) {
    final String homeTeamName = liveMatch.teams?.home?.name ?? context.localizations.unknownHomeTeam;
    final String awayTeamName = liveMatch.teams?.away?.name ?? context.localizations.unknownAwayTeam;
    final String matchStatusShort = liveMatch.fixture?.status?.short ?? AppConstVariables.stringPlaceholder;
    final int halfTimeHomeGoals = liveMatch.score?.halftime?.home ?? AppConstVariables.intPlaceholder;
    final int halfTimeAwayGoals = liveMatch.score?.halftime?.away ?? AppConstVariables.intPlaceholder;
    final int fullTimeHomeGoals = liveMatch.score?.fulltime?.home ?? AppConstVariables.intPlaceholder;
    final int fullTimeAwayGoals = liveMatch.score?.fulltime?.away ?? AppConstVariables.intPlaceholder;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        child: Column(
          children: [
            if (isFirstHalf) ...[
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
              ),
            ] else ...[
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
                    matchStatusShort != AppConstVariables.fullTime
                        ? context.localizations.matchNotEnded
                        : '$homeTeamName $fullTimeHomeGoals - '
                            '$fullTimeAwayGoals $awayTeamName',
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  )
                ],
              )
            ],
          ],
        ),
      ),
    );
  }
}
