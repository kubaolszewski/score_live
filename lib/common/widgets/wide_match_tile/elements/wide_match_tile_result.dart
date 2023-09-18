import 'package:flutter/material.dart';
import '../../../../data/models/match_model/match_model.dart';
import '../../../constants/app_const_variables.dart';
import '../../../extensions/match/match_properties_getter_ext.dart';

class WideMatchTileResult extends StatelessWidget {
  const WideMatchTileResult({super.key, required this.match});

  final MatchModel match;

  @override
  Widget build(BuildContext context) {
    final int homeTeamGoals = match.homeTeamGoals;
    final int awayTeamGoals = match.awayTeamGoals;
    final String matchStatusShort = match.matchStatusShort;
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
