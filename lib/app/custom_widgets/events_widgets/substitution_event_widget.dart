import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/app_const_variables.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class SubstitutionEventWidget extends StatelessWidget {
  const SubstitutionEventWidget({
    super.key,
    required this.playerIn,
    required this.playerOut,
    required this.isHomeTeam,
  });

  final String playerIn;
  final String playerOut;
  final bool isHomeTeam;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isHomeTeam) ...[
          const Image(
            image: AssetImage(AssetsPaths.substitution),
            width: 16,
            height: 16,
          ),
          const SizedBox(width: 12),
          SizedBox(
            height: 36,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(
                          context.localizations.playerIn,
                          style: const CustomTextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.w700),
                        ),
                        Text(playerIn,
                            style:
                                const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text(context.localizations.playerOut,
                            style: const CustomTextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.w700)),
                        Text(playerOut,
                            style: const CustomTextStyle(
                                fontSize: 12, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700)),
                      ],
                    ),
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
                    child: Row(
                      children: [
                         Text(
                          context.localizations.playerIn,
                          style: const CustomTextStyle(fontSize: 12, color: Colors.green, fontWeight: FontWeight.w700),
                        ),
                        Text(playerIn,
                            style:
                                const CustomTextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                         Text(context.localizations.playerOut,
                            style: const CustomTextStyle(fontSize: 12, color: Colors.red, fontWeight: FontWeight.w700)),
                        Text(playerOut,
                            style: const CustomTextStyle(
                                fontSize: 12, color: AppColors.inactiveTextGrey, fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          const Image(
            image: AssetImage(AssetsPaths.substitution),
            width: 16,
            height: 16,
          ),
        ]
      ],
    );
  }
}
