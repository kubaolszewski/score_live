import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';

class WideMatchTileElapsedTime extends StatelessWidget {
  const WideMatchTileElapsedTime({
    super.key,
    required this.liveMatch,
  });

  final LiveMatchModel liveMatch;

  @override
  Widget build(BuildContext context) {
    const String stringPlaceholder = '';
    final String matchStatus = liveMatch.fixture?.status?.short ?? stringPlaceholder;
    final String longStringDate = liveMatch.fixture?.date ?? stringPlaceholder;
    final DateTime formattedDate = DateTime.parse(longStringDate);
    final String matchDate = DateFormat('dd/MM').format(formattedDate);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
      child: Column(
        children: [
          Text(
            matchStatus,
            style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          Text(
            matchDate,
            style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
