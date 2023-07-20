import 'package:flutter/material.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';

class WideMatchTileResult extends StatelessWidget {
  const WideMatchTileResult({super.key, required this.match});

  final LiveMatchModel match;

  @override
  Widget build(BuildContext context) {
    const int intPlaceholder = 0;
    final int homeTeamGoals = match.goals?.home ?? intPlaceholder;
    final int awayTeamGoals = match.goals?.away ?? intPlaceholder;
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
