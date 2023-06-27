import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/landing/cubit/landing_cubit.dart';
import 'package:score_live/app/features/landing/landing_module.dart';
import 'package:score_live/presentation/constants/app_colors.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({
    super.key,
  });

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

@override
void dispose() {
  Modular.dispose<LandingCubit>();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    LandingCubit landingCubit = Modular.get<LandingCubit>();
    return BlocProvider(
      create: (context) => landingCubit,
      child: BlocConsumer<LandingCubit, LandingState>(
        listener: _landingScreenListener,
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.backgroundBlack,
            body: const RouterOutlet(),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.currentIndex,
              onTap: landingCubit.screenSwitch,
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home_filled),
                  icon: Icon(Icons.home_outlined, size: 32),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.list),
                  icon: Icon(Icons.table_rows_outlined, size: 32),
                  label: 'Competition',
                ),
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.person),
                  icon: Icon(Icons.person_outlined, size: 32),
                  label: 'Account',
                ),
              ],
              backgroundColor: AppColors.backgroundBlack,
              selectedFontSize: 16,
              unselectedFontSize: 16,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: AppColors.unselectedItemGrey),
              selectedItemColor: AppColors.mainThemePink,
              unselectedItemColor: AppColors.unselectedItemGrey,
            ),
          );
        },
      ),
    );
  }

  void _landingScreenListener(BuildContext context, LandingState state) {
    switch (state.currentIndex) {
      case 0:
        Modular.to.navigate(LandingScreenPaths.homeModulePath);
      case 1:
        Modular.to.navigate(LandingScreenPaths.competitionModulePath);
      case 2:
        Modular.to.navigate(LandingScreenPaths.accountModulePath);
      default:
        Modular.to.navigate(LandingScreenPaths.homeModulePath);
    }
  }
}
