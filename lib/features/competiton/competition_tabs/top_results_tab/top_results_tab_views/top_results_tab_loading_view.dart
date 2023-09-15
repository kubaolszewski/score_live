import 'package:flutter/material.dart';
import '../../../../../common/constants/app_colors.dart';

class TopResultsTabLoadingView extends StatelessWidget {
  const TopResultsTabLoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 100),
        CircularProgressIndicator(
          color: AppColors.mainThemePink,
        ),
      ],
    );
  }
}
