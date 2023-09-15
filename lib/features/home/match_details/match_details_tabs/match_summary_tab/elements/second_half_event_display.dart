import 'package:flutter/material.dart';
import '../../../../../../../common/widgets/event_text_with_icon.dart';
import '../../../../../../../common/extensions/match_events/events_validation_ext.dart';
import '../../../../../../data/models/match_model/match_model.dart';
import '../../../../../../data/models/match_events_model/match_events_model.dart';
import '../../../../../../common/constants/app_colors.dart';
import '../../../../../../common/constants/app_const_variables.dart';

class SecondHalfEventsDisplay extends StatelessWidget {
  const SecondHalfEventsDisplay({
    super.key,
    required this.liveMatch,
    required this.matchEvents,
  });

  final MatchModel liveMatch;
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
          Column(
            children: [
              for (final event in matchEvents.reversed) ...[
                if (event.validSecondHalfEvents(homeTeamID))
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: EventTextWithtIcon(
                        event: event,
                        assist: event.assistPlayerName,
                        time: event.timeElapsed.toString(),
                        player: event.playerName,
                        isHomeTeam: true),
                  ),
                if (event.validSecondHalfEvents(awayTeamID))
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: EventTextWithtIcon(
                        event: event,
                        assist: event.assistPlayerName,
                        time: event.timeElapsed.toString(),
                        player: event.playerName,
                        isHomeTeam: false),
                  )
              ]
            ],
          ),
        ],
      ),
    );
  }
}
