import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class EventTextTemplate extends StatelessWidget {
  const EventTextTemplate({
    super.key,
    required this.leadingProperty,
    required this.player,
    required this.isHomeTeam,
  });

  final String leadingProperty;
  final String player;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (isHomeTeam == true) ...[
          Text(leadingProperty, style: CommonTextStyles.basicWhiteTextWithWeight),
          const SizedBox(width: 10),
          Text(player, style: CommonTextStyles.basicWhiteTextWithWeight),
        ] else ...[
          Text(player, style: CommonTextStyles.basicWhiteTextWithWeight),
          const SizedBox(width: 10),
          Text(leadingProperty, style: CommonTextStyles.basicWhiteTextWithWeight),
        ],
      ],
    );
  }
}
