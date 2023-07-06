import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class CompetitionOptionsTapBar extends StatelessWidget {
  const CompetitionOptionsTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    final competitionCubit = Modular.get<CompetitionCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            competitionCubit.switchBrowsingOptions(BrowsingOptions.top);
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 4.0),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              width: 3.0,
              color: AppColors.mainThemePink,
            ))),
            child: const Text(
              'Top',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            competitionCubit.switchBrowsingOptions(BrowsingOptions.region);
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 4.0),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              width: 3.0,
              color: AppColors.mainThemePink,
            ))),
            child: const Text(
              'Region',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            competitionCubit.switchBrowsingOptions(BrowsingOptions.favorites);
          },
          child: Container(
            padding: const EdgeInsets.only(bottom: 4.0),
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              width: 3.0,
              color: AppColors.mainThemePink,
            ))),
            child: const Text(
              'Favorites',
              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
