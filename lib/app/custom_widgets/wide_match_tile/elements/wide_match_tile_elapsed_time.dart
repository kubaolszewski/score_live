
import 'package:flutter/material.dart';
import 'package:score_live/models/live_match_model.dart';

class WideMatchTileElapsedTime extends StatelessWidget {
  const WideMatchTileElapsedTime({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0.5.toInt(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
        child: Column(
          children: [
            Text(
              liveMatch.fixture!.status!.short!,
              style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
            const Text(
              '14/8',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}