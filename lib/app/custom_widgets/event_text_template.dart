import 'package:flutter/material.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class EventTextTemplate extends StatelessWidget {
  const EventTextTemplate({
    super.key,
    this.event,
    required this.leadingProperty,
    required this.player,
    required this.isHomeTeam,
  });

  final MatchEventsModel? event;
  final String leadingProperty;
  final String player;
  final bool isHomeTeam;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isHomeTeam == true ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        if (isHomeTeam == true) ...[
          Text(
            "$leadingProperty'",
            style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          const SizedBox(width: 6),
          if (event!.type == AppConstVariables.goal) const Icon(Icons.sports_soccer, color: Colors.white, size: 16),
          if (event!.type == AppConstVariables.card) ...[
            if (event!.detail == AppConstVariables.yellowCard)
              const Image(
                image: AssetImage('${AppConstVariables.assetsPath}yellow_card.png'),
                width: 16,
                height: 16,
              )
            else if (event!.detail == AppConstVariables.redCard)
              const Image(
                image: AssetImage('${AppConstVariables.assetsPath}red_card.png'),
                width: 16,
                height: 16,
              ),
          ],
          if (event!.type == AppConstVariables.substitution)
            const Image(
              image: AssetImage('${AppConstVariables.assetsPath}substitution.png'),
              width: 16,
              height: 16,
            ),
          if (event!.type == AppConstVariables.varCheck)
            const Image(
              image: AssetImage('${AppConstVariables.assetsPath}var.png'),
              width: 16,
              height: 16,
            ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                player,
                style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ] else ...[
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                player,
                style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          const SizedBox(width: 12),
          if (event!.type == AppConstVariables.goal) const Icon(Icons.sports_soccer, color: Colors.white, size: 16),
          if (event!.type == AppConstVariables.card) ...[
            if (event!.detail == AppConstVariables.yellowCard)
              const Image(
                image: AssetImage('${AppConstVariables.assetsPath}yellow_card.png'),
                width: 16,
                height: 16,
              )
            else if (event!.detail == AppConstVariables.redCard)
              const Image(
                image: AssetImage('${AppConstVariables.assetsPath}red_card.png'),
                width: 16,
                height: 16,
              ),
          ],
          if (event!.type == AppConstVariables.substitution)
            const Image(
              image: AssetImage('${AppConstVariables.assetsPath}substitution.png'),
              width: 16,
              height: 16,
            ),
          if (event!.type == AppConstVariables.varCheck)
            const Image(
              image: AssetImage('${AppConstVariables.assetsPath}var.png'),
              width: 16,
              height: 16,
            ),
          const SizedBox(width: 6),
          Text("$leadingProperty'",
              style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
        ],
      ],
    );
  }
}
