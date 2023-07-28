import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class TextWithoutLeadingIcon extends StatelessWidget {
  const TextWithoutLeadingIcon({
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
      mainAxisAlignment: isHomeTeam == true ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isHomeTeam == true) ...[
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "$leadingProperty $player",
                style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ] else ...[
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "$player $leadingProperty",
                style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ],
      ],
    );
  }
}
