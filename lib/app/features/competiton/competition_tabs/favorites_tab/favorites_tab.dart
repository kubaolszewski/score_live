
import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class FavoritesTab extends StatelessWidget {
  const FavoritesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.listTileGrey,
              ),
              height: 250,
            ),
          ),
        ],
      ),
    );
  }
}