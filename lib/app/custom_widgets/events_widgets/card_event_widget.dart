import 'package:flutter/material.dart';
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (isHomeTeam == true) ...[
          if (eventDetail == AppConstVariables.yellowCard) ...[
            const Image(
              image: AssetImage('${AppConstVariables.assetsPath}yellow_card.png'),
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 12),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(player,
                  style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
            ),
          ] else if (eventDetail == AppConstVariables.redCard) ...[
            const Image(
              image: AssetImage('${AppConstVariables.assetsPath}red_card.png'),
              width: 16,
              height: 16,
            ),
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
              if (eventDetail == AppConstVariables.yellowCard) ...[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(player,
                      style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(width: 12),
                const Image(
                  image: AssetImage('${AppConstVariables.assetsPath}yellow_card.png'),
                  width: 16,
                  height: 16,
                ),
              ] else if (eventDetail == AppConstVariables.redCard) ...[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(player,
                      style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                ),
                const SizedBox(width: 12),
                const Image(
                  image: AssetImage('${AppConstVariables.assetsPath}red_card.png'),
                  width: 16,
                  height: 16,
                ),
              ],
            ],
          ),
        ]
      ],
    );
  }
}
