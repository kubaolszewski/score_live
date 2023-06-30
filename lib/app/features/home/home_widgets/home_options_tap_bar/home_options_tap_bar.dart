import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/core/enums.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class HomeOptionsTapBar extends StatelessWidget {
  const HomeOptionsTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    final homeCubit = Modular.get<HomeCubit>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              homeCubit.switchHomeOptions(HomeOptions.upcoming);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: AppColors.mainThemePink,
              ))),
              child: Text(
                context.localizations.homeUpcoming,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              homeCubit.switchHomeOptions(HomeOptions.score);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: AppColors.mainThemePink,
              ))),
              child: Text(
                context.localizations.homeScore,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              homeCubit.switchHomeOptions(HomeOptions.favorites);
            },
            child: Container(
              padding: const EdgeInsets.only(bottom: 4.0),
              decoration: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                width: 3.0,
                color: AppColors.mainThemePink,
              ))),
              child: Text(
                context.localizations.homeFavorites,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
