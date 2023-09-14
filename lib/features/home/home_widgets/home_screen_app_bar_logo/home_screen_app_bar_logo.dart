import 'package:flutter/material.dart';
import '../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/text_styles.dart';

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
            style: const CustomTextStyle(color: Colors.white, fontWeight: FontWeight.w700),
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
