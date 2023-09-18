import 'package:flutter/material.dart';
import '../../../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../../../common/extensions/match/match_properties_getter_ext.dart';
import '../../../../../../data/models/match_model/match_model.dart';
import '../../../../../../common/constants/app_const_variables.dart';

class HalvesResultDisplay extends StatelessWidget {
  const HalvesResultDisplay({super.key, required this.liveMatch, required this.isFirstHalf});

  final MatchModel liveMatch;
  final bool isFirstHalf;

  @override
  Widget build(BuildContext context) {
    final String homeTeamName = liveMatch.teams?.home?.name ?? context.localizations.unknownHomeTeam;
    final String awayTeamName = liveMatch.teams?.away?.name ?? context.localizations.unknownAwayTeam;
    final String matchStatusShort = liveMatch.matchStatusShort;
    final int halfTimeHomeGoals = liveMatch.halfTimeHomeGoals;
    final int halfTimeAwayGoals = liveMatch.halfTimeAwayGoals;
    final int fullTimeHomeGoals = liveMatch.fullTimeHomeGoals;
    final int fullTimeAwayGoals = liveMatch.fullTimeAwayGoals;

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
