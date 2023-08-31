import 'package:flutter/material.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_summary_tab/elements/first_half_events_display.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_summary_tab/elements/halves_results_display.dart';
import 'package:score_live/app/features/home/match_details/match_details_tabs/match_summary_tab/elements/second_half_event_display.dart';
import 'package:score_live/app/common/extensions/context/applocalization_context.dart';
import 'package:score_live/models/match_model/match_model.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class MatchSummaryTab extends StatelessWidget {
  const MatchSummaryTab({
    super.key,
    required this.liveMatch,
    required this.matchEvents,
  });

  final MatchModel liveMatch;
  final List<MatchEventsModel> matchEvents;

  @override
  Widget build(BuildContext context) {
    if (matchEvents.isEmpty) {
      return SizedBox(
        height: 200,
        child: Center(
          child: Text(
            context.localizations.noDetailsInfo,
            textAlign: TextAlign.center,
            style: const CustomTextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          HalvesResultDisplay(liveMatch: liveMatch, isFirstHalf: false),
          SecondHalfEventsDisplay(liveMatch: liveMatch, matchEvents: matchEvents),
          HalvesResultDisplay(liveMatch: liveMatch, isFirstHalf: true),
          FirstHalfEventsDisplay(liveMatch: liveMatch, matchEvents: matchEvents),
        ],
      ),
    );
  }
}
