import 'package:flutter/material.dart';
import 'events_widgets/card_event_widget.dart';
import 'events_widgets/goal_event_widget.dart';
import 'events_widgets/substitution_event_widget.dart';
import 'events_widgets/var_event_widget.dart';
import '../extensions/enums.dart';
import '../extensions/match_events/events_validation_ext.dart';
import '../../data/models/match_events_model/match_events_model.dart';
import '../constants/app_colors.dart';
import '../constants/app_const_variables.dart';
import '../theme/custom_text_style.dart';

class EventTextWithtIcon extends StatelessWidget {
  const EventTextWithtIcon({
    super.key,
    this.event,
    this.assist,
    required this.time,
    required this.player,
    required this.isHomeTeam,
  });

  final MatchEventsModel? event;
  final String? assist;
  final String time;
  final String player;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    final goal = EventType.goal.eventTypeFormatter();
    final card = EventType.card.eventTypeFormatter();
    final substitution = EventType.substitution.eventTypeFormatter();
    final varCheck = EventType.varCheck.eventTypeFormatter();
    final eventType = event?.type ?? AppConstVariables.stringPlaceholder;
    final eventDetail = event?.detail ?? AppConstVariables.stringPlaceholder;
    final playerIn = assist ?? AppConstVariables.stringPlaceholder;

    return Row(
      mainAxisAlignment: isHomeTeam == true ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isHomeTeam) ...[
          Text(
            "$time'",
            style: const CustomTextStyle(fontSize: 12, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700),
          ),
          const SizedBox(width: 6),
          if (eventType == goal) GoalEventWidget(player: player, assist: assist, isHomeTeam: isHomeTeam),
          if (eventType == card) CardEventWidget(eventDetail: eventDetail, player: player, isHomeTeam: isHomeTeam),
          if (eventType == substitution)
            SubstitutionEventWidget(playerIn: playerIn, playerOut: player, isHomeTeam: isHomeTeam),
          if (eventType == varCheck) VarEventWidget(eventDetail: eventDetail, player: player, isHomeTeam: isHomeTeam)
        ] else ...[
          if (eventType == goal) GoalEventWidget(player: player, assist: assist, isHomeTeam: isHomeTeam),
          if (eventType == card) CardEventWidget(eventDetail: eventDetail, player: player, isHomeTeam: isHomeTeam),
          if (eventType == substitution)
            SubstitutionEventWidget(playerIn: playerIn, playerOut: player, isHomeTeam: isHomeTeam),
          if (eventType == varCheck) VarEventWidget(eventDetail: eventDetail, player: player, isHomeTeam: isHomeTeam),
          const SizedBox(width: 6),
          Text(
            "$time'",
            style: const CustomTextStyle(fontSize: 12, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700),
          ),
        ],
      ],
    );
  }
}
