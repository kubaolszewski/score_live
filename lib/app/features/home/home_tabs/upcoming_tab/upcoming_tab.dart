import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.listTileGrey,
        ),
        height: 500,
      ),
    );
  }
}
