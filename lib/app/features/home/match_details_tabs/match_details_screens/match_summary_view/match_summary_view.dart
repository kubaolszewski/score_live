import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_summary_tab/elements/halves_events_display.dart.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_summary_tab/elements/halves_results_display.dart';
import 'package:score_live/models/live_match_model.dart';
import 'package:score_live/models/match_events_model.dart';

class MatchSummaryView extends StatelessWidget {
  const MatchSummaryView({
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
          FirstHalfEventsDisplay(liveMatch: liveMatch, matchEvents: matchEvents),
          FirstHalfResultDisplay(liveMatch: liveMatch),
          SecondHalfEventsDisplay(liveMatch: liveMatch, matchEvents: matchEvents),
          SecondfHalfResultDisplay(liveMatch: liveMatch),
        ],
      ),
    );
  }
}
