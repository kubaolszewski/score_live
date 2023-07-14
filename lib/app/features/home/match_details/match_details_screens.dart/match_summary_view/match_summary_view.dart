import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_summary_view/elements/halves_events_display.dart.dart';
import 'package:score_live/app/features/home/match_details/match_details_screens.dart/match_summary_view/elements/halves_results_display.dart';
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
    final String homeTeamName = liveMatch.teams?.home?.name ?? 'Unknown home team';
    final String awayTeamName = liveMatch.teams?.away?.name ?? 'Unknown away team';
    final String result = liveMatch.fixture?.status?.long ?? '';

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          FirstHalfEventsDisplay(liveMatch: liveMatch, matchEvents: matchEvents),
          FirstHalfResultDisplay(
              liveMatch: liveMatch, result: result, homeTeamName: homeTeamName, awayTeamName: awayTeamName),
          SecondHalfEventsDisplay(liveMatch: liveMatch, matchEvents: matchEvents),
          SecondfHalfResultDisplay(
              liveMatch: liveMatch, result: result, homeTeamName: homeTeamName, awayTeamName: awayTeamName),
        ],
      ),
    );
  }
}