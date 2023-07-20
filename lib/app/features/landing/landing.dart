import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/landing/cubit/landing_cubit.dart';
import 'package:score_live/app/features/landing/landing_module.dart';
import 'package:score_live/core/applocalization_context.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Modular.get<LandingCubit>(),
      child: BlocConsumer<LandingCubit, LandingState>(
        listener: _landingScreenListener,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.backgroundBlack,
            body: const RouterOutlet(),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.currentIndex,
              onTap: Modular.get<LandingCubit>().screenSwitch,
              items: [
                BottomNavigationBarItem(
                  activeIcon: const Icon(Icons.home_filled, size: 28),
                  icon: const Icon(Icons.home_outlined),
                  label: context.localizations.navHome,
                ),
                BottomNavigationBarItem(
                  activeIcon: const Icon(Icons.list, size: 28),
                  icon: const Icon(Icons.table_rows_outlined),
                  label: context.localizations.navCompetition,
                ),
                BottomNavigationBarItem(
                  activeIcon: const Icon(Icons.person, size: 28),
                  icon: const Icon(Icons.person_outlined),
                  label: context.localizations.navAccount,
                ),
              ],
              backgroundColor: AppColors.backgroundBlack,
              selectedFontSize: 16,
              unselectedFontSize: 14,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              selectedItemColor: AppColors.mainThemePink,
              unselectedItemColor: AppColors.appBarInactiveIcon,
            ),
          );
        },
      ),
    );
  }
}

void _landingScreenListener(BuildContext context, LandingState state) {
  switch (state.currentIndex) {
    case 0:
      Modular.to.pushNamed(LandingScreenPaths.homeModulePath);
    case 1:
      Modular.to.pushNamed(LandingScreenPaths.competitionModulePath);
    case 2:
      Modular.to.pushNamed(LandingScreenPaths.accountModulePath);
    default:
      Modular.to.pushNamed(LandingScreenPaths.homeModulePath);
  }
}

@override
void dispose() {
  Modular.dispose<LandingCubit>();
}
