import 'package:flutter/material.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class CompetitionSearchBar extends StatelessWidget {
  CompetitionSearchBar({super.key});

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor: MaterialStateProperty.all<Color>(AppColors.inactiveItemGrey),
      hintText: 'Search for competition, club etc.',
      hintStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(color: Colors.white, fontSize: 14),
      ),
      textStyle: MaterialStateProperty.all<TextStyle>(
        const TextStyle(color: Colors.white, fontSize: 14),
      ),
      controller: searchController,
      leading: const Icon(
        Icons.search,
        color: Colors.white,
      ),
    );
  }
}
