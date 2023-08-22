import 'package:flutter/material.dart';
import 'package:score_live/app/common/extensions/enums.dart';
import 'package:score_live/app/common/extensions/match_events/events_validation_ext.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class CardEventWidget extends StatelessWidget {
  const CardEventWidget({
    super.key,
    required this.eventDetail,
    required this.player,
    required this.isHomeTeam,
  });

  final String eventDetail;
  final String player;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    final yellowCard = EventType.yellowCard.eventTypeFormatter();
    final redCard = EventType.redCard.eventTypeFormatter();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isHomeTeam) ...[
          if (eventDetail == yellowCard) ...[
            const Image(image: AssetImage(AssetsPaths.yellowCard), width: 16, height: 16),
            const SizedBox(width: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(player,
                  style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
            ),
          ] else if (eventDetail == redCard) ...[
            const Image(image: AssetImage(AssetsPaths.redCard), width: 16, height: 16),
            const SizedBox(width: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(player,
                  style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
            ),
          ],
        ] else ...[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (eventDetail == yellowCard) ...[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(player,
                      style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(width: 12),
                const Image(image: AssetImage(AssetsPaths.yellowCard), width: 16, height: 16),
              ] else if (eventDetail == redCard) ...[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(player,
                      style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(width: 12),
                const Image(image: AssetImage(AssetsPaths.redCard), width: 16, height: 16),
              ],
            ],
          ),
        ]
      ],
    );
  }
}
