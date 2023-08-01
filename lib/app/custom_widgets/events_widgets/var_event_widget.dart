import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';


class VarEventWidget extends StatelessWidget {
  const VarEventWidget({
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
      children: [
        if (isHomeTeam == true) ...[
          Image(
            image: const AssetImage(('${AppConstVariables.assetsPath}var.png')),
            width: 16,
            height: 16,
            color: eventDetail == AppConstVariables.varGoalCancelled ? Colors.red : Colors.white,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(player,
              style:
                  const CustomTextStyle(fontSize: 12, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700))
        ] else ...[
          Text(player, style: const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
          const SizedBox(
            width: 12,
          ),
          Image(
            image: const AssetImage(('${AppConstVariables.assetsPath}var.png')),
            width: 16,
            height: 16,
            color: eventDetail == AppConstVariables.varGoalCancelled ? Colors.red : Colors.white,
          ),
        ]
      ],
    );
  }
}
