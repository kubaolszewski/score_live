import 'package:flutter/material.dart';
import 'package:score_live/app/custom_widgets/events_widgets/card_event_widget.dart';
import 'package:score_live/app/custom_widgets/events_widgets/goal_event_widget.dart';
import 'package:score_live/app/custom_widgets/events_widgets/substitution_event_widget.dart';
import 'package:score_live/app/custom_widgets/events_widgets/var_event_widget.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

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
    final eventType = event?.type ?? AppConstVariables.stringPlaceholder;
    final eventDetail = event?.detail ?? AppConstVariables.stringPlaceholder;
    return Row(
      mainAxisAlignment: isHomeTeam == true ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isHomeTeam == true) ...[
          Text(
            "$time'",
            style: const CustomTextStyle(fontSize: 12, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700),
          ),
          const SizedBox(width: 6),
          if (eventType == AppConstVariables.goal)
            GoalEventWidget(player: player, assist: assist, isHomeTeam: isHomeTeam),
          if (eventType == AppConstVariables.card)
            CardEventWidget(eventDetail: eventDetail, player: player, isHomeTeam: isHomeTeam),
          if (eventType == AppConstVariables.substitution)
            SubstitutionEventWidget(playerIn: assist, playerOut: player, isHomeTeam: isHomeTeam),
          if (eventType == AppConstVariables.varCheck)
            VarEventWidget(eventDetail: eventDetail, player: player, isHomeTeam: isHomeTeam)
        ] else ...[
          if (eventType == AppConstVariables.goal)
            GoalEventWidget(player: player, assist: assist, isHomeTeam: isHomeTeam),
          if (eventType == AppConstVariables.card)
            CardEventWidget(eventDetail: eventDetail, player: player, isHomeTeam: isHomeTeam),
          if (eventType == AppConstVariables.substitution)
            SubstitutionEventWidget(playerIn: assist, playerOut: player, isHomeTeam: isHomeTeam),
          if (eventType == AppConstVariables.varCheck)
            VarEventWidget(eventDetail: eventDetail, player: player, isHomeTeam: isHomeTeam),
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
