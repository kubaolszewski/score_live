import 'package:flutter/material.dart';
import '../../../../common/constants/app_colors.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

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
