import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/live_match_tile/live_match_tile.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';

class LiveNowLoadedView extends StatelessWidget {
  const LiveNowLoadedView({
    super.key,
    required this.liveMatches,
  });

  final List<LiveMatchModel> liveMatches;

  @override
  Widget build(BuildContext context) {
    if (liveMatches.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            context.localizations.noMatchesLive,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      );
    }
    return SizedBox(
      height: 220,
      child: ListView.builder(
        physics: const PageScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: liveMatches.length,
        itemBuilder: (context, index) {
          final liveMatch = liveMatches[index];
          return LiveMatchTile(
            liveMatch: liveMatch,
          );
        },
      ),
    );
  }
}
