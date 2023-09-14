import 'package:flutter/material.dart';
import '../../../../../models/match_model/match_model.dart';
import '../../../../../presentation/constants/app_const_variables.dart';

class WideMatchTileResult extends StatelessWidget {
  const WideMatchTileResult({super.key, required this.match});

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    final int homeTeamGoals = match.goals?.home ?? AppConstVariables.intPlaceholder;
    final int awayTeamGoals = match.goals?.away ?? AppConstVariables.intPlaceholder;
    final String matchStatusShort = match.fixture?.status?.short ?? AppConstVariables.stringPlaceholder;
    final bool matchStatusCheck = matchStatusShort == AppConstVariables.matchNotStarted;
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                matchStatusCheck ? '--' : '$homeTeamGoals',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                matchStatusCheck ? '--' : '$awayTeamGoals',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
