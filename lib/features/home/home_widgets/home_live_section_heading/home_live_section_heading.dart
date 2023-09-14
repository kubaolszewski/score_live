import 'package:flutter/material.dart';
import '../../../../../common/extensions/context/applocalization_context.dart';
import '../../../../common/constants/app_colors.dart';
import '../../../../common/theme/custom_text_style.dart';

class HomeLiveSectionHeading extends StatelessWidget {
  const HomeLiveSectionHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Text(
              context.localizations.liveNow,
              style: const CustomTextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              context.localizations.seeMore,
              style: const CustomTextStyle(fontSize: 14, color: AppColors.mainThemePink, fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
