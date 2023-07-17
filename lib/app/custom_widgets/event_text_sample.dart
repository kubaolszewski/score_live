import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class EventTextSample extends StatelessWidget {
  const EventTextSample({super.key, required this.time, required this.player});

  final String time;
  final String player;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(time, style: CommonTextStyles.basicWhiteText),
        const SizedBox(width: 5),
        Text(player, style: CommonTextStyles.basicWhiteText),
      ],
    );
  }
}
