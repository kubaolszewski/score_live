import 'package:flutter/material.dart';
import '../../../../../../../common/widgets/event_text_with_icon.dart';
import '../../../../../../../common/extensions/match_events/events_validation_ext.dart';
import '../../../../../../common/extensions/match/match_properties_getter_ext.dart';
import '../../../../../../data/models/match_model/match_model.dart';
import '../../../../../../data/models/match_events_model/match_events_model.dart';
import '../../../../../../common/constants/app_colors.dart';

class FirstHalfEventsDisplay extends StatelessWidget {
  const FirstHalfEventsDisplay({super.key, required this.liveMatch, required this.matchEvents});

  final MatchModel liveMatch;
  final List<MatchEventsModel> matchEvents;

  @override
  Widget build(BuildContext context) {
    final homeTeamID = liveMatch.homeTeamId;
    final awayTeamID = liveMatch.awayTeamId;
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
                if (event.validFirstHalfEvents(homeTeamID))
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                    child: EventTextWithtIcon(
                        event: event,
                        assist: event.assistPlayerName,
                        time: event.timeElapsed.toString(),
                        player: event.playerName,
                        isHomeTeam: true),
                  ),
                if (event.validFirstHalfEvents(awayTeamID))
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: EventTextWithtIcon(
                        event: event,
                        assist: event.assistPlayerName,
                        time: event.timeElapsed.toString(),
                        player: event.playerName,
                        isHomeTeam: false),
                  )
              ],
            ],
          ),
        ],
      ),
    );
  }
}
