import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class ScoreTabLoadingView extends StatelessWidget {
  const ScoreTabLoadingView({
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
