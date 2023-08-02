import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class GoalEventWidget extends StatelessWidget {
  const GoalEventWidget({
    super.key,
    required this.player,
    this.assist,
    required this.isHomeTeam,
  });

  final String player;
  final String? assist;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isHomeTeam) ...[
          const Icon(Icons.sports_soccer, color: Colors.white, size: 16),
          const SizedBox(width: 12),
          SizedBox(
            height: 36,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(player,
                        style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('${context.localizations.assist} $assist',
                        style: const CustomTextStyle(
                            fontSize: 12, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
          )
        ] else ...[
          SizedBox(
            height: 36,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(player,
                        style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('${context.localizations.assist} $assist',
                        style: const CustomTextStyle(
                            fontSize: 12, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          const Icon(Icons.sports_soccer, color: Colors.white, size: 16),
        ]
      ],
    );
  }
}
