import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_summary_tab/elements/halves_events_display.dart.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_summary_tab/elements/halves_results_display.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';

class MatchSummaryTab extends StatelessWidget {
  const MatchSummaryTab({
    super.key,
    required this.liveMatch,
    required this.matchEvents,
  });

  final LiveMatchModel liveMatch;
  final List<MatchEventsModel> matchEvents;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          HalvesEventsDisplay(liveMatch: liveMatch, matchEvents: matchEvents, isHalfTime: true),
          HalvesResultDisplay(liveMatch: liveMatch, isHalfTime: true),
          HalvesEventsDisplay(liveMatch: liveMatch, matchEvents: matchEvents, isHalfTime: false),
          HalvesResultDisplay(liveMatch: liveMatch, isHalfTime: false),
        ],
      ),
    );
  }
}
