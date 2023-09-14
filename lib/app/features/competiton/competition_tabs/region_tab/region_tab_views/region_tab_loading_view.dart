import 'package:flutter/material.dart';
import '../../../../../../presentation/constants/app_colors.dart';

class RegionTabLoadingView extends StatelessWidget {
  const RegionTabLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.mainThemePink,
      ),
    );
  }
}
