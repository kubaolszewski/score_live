import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/event_text_with_leading_icon.dart';
import 'package:score_live/core/events_validation_ext.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';

class FirstHalfEventsDisplay extends StatelessWidget {
  const FirstHalfEventsDisplay({super.key, required this.liveMatch, required this.matchEvents});

  final LiveMatchModel liveMatch;
  final List<MatchEventsModel> matchEvents;

  @override
  Widget build(BuildContext context) {
    final homeTeamID = liveMatch.teams?.home?.id ?? AppConstVariables.intPlaceholder;
    final awayTeamID = liveMatch.teams?.away?.id ?? AppConstVariables.intPlaceholder;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.listTileGrey,
      ),
      child: ListView(
        shrinkWrap: true,
        primary: false,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    for (final event in matchEvents) ...[
                      if (event.validFirstHalfEvents(homeTeamID))
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: EventTextWithLeadingIcon(
                              event: event,
                              leadingProperty: event.time?.elapsed.toString() ?? AppConstVariables.stringPlaceholder,
                              player: event.player?.name ?? AppConstVariables.stringPlaceholder,
                              isHomeTeam: true),
                        )
                      else
                        const SizedBox.shrink()
                    ]
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    for (final event in matchEvents) ...[
                      if (event.validFirstHalfEvents(awayTeamID))
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                          child: EventTextWithLeadingIcon(
                              event: event,
                              leadingProperty: event.time?.elapsed.toString() ?? AppConstVariables.stringPlaceholder,
                              player: event.player?.name ?? AppConstVariables.stringPlaceholder,
                              isHomeTeam: false),
                        )
                      else
                        const SizedBox.shrink()
                    ]
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
