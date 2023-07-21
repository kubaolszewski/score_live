import 'package:flutter/material.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class WideMatchTileResult extends StatelessWidget {
  const WideMatchTileResult({super.key, required this.match});

  final LiveMatchModel match;

  @override
  Widget build(BuildContext context) {
    final int homeTeamGoals = match.goals?.home ?? AppConstVariables.intPlaceholder;
    final int awayTeamGoals = match.goals?.away ?? AppConstVariables.intPlaceholder;
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '$homeTeamGoals',
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
                '$awayTeamGoals',
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
