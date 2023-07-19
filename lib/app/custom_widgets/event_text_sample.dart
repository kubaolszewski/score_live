import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class EventTextSample extends StatelessWidget {
  const EventTextSample({super.key, required this.time, required this.player, required this.isHomeTeam});

  final String time;
  final String player;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (isHomeTeam == true) ...[
          Text(time, style: CommonTextStyles.basicWhiteTextWithWeight),
          const SizedBox(width: 5),
          Text(player, style: CommonTextStyles.basicWhiteTextWithWeight),
        ] else ...[
          Text(player, style: CommonTextStyles.basicWhiteTextWithWeight),
          const SizedBox(width: 5),
          Text(time, style: CommonTextStyles.basicWhiteTextWithWeight),
        ],
      ],
    );
  }
}
