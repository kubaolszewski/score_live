import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/common_text_styles.dart';

class HomeEventTextSample extends StatelessWidget {
  const HomeEventTextSample({super.key, required this.time, required this.player});

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

class AwayEventTextSample extends StatelessWidget {
  const AwayEventTextSample({super.key, required this.time, required this.player});

  final String time;
  final String player;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(player, style: CommonTextStyles.basicWhiteText),
        const SizedBox(width: 5),
        Text(time, style: CommonTextStyles.basicWhiteText),
      ],
    );
  }
}
