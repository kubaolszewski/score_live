import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class CompetitionSearchBar extends StatelessWidget {
  const CompetitionSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.inactiveItemGrey,
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search for competition, club etc.',
          hintStyle: TextStyle(color: Colors.white, fontSize: 14),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
