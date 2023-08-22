import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class EventTextWithoutIcon extends StatelessWidget {
  const EventTextWithoutIcon({
    super.key,
    required this.time,
    required this.player,
    required this.isHomeTeam,
  });

  final String time;
  final String player;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isHomeTeam == true ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        isHomeTeam
            ? Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "$time $player",
                    style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              )
            : Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "$player $time",
                    style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
      ],
    );
  }
}
