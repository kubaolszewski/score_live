import 'package:flutter/material.dart';
import '../../../../../../presentation/constants/app_colors.dart';

class UpcomingTabLoadingView extends StatelessWidget {
  const UpcomingTabLoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      color: AppColors.mainThemePink,
    ));
  }
}
