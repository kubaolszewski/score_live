import 'package:flutter/material.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';
import 'package:score_live/presentation/constants/text_styles.dart';

class HomeScreenAppBarLogo extends StatelessWidget {
  const HomeScreenAppBarLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 109,
      child: Stack(
        children: [
          Text(
            context.localizations.appTitle,
            style: CommonTextStyles.basicWhiteTextWithWeight,
          ),
          const Positioned(
            right: 10,
            child: CircleAvatar(backgroundColor: AppColors.mainThemePink, radius: 6),
          )
        ],
      ),
    );
  }
}
