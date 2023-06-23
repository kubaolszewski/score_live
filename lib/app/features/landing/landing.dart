import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/landing/cubit/landing_cubit.dart';
import 'package:score_live/app/features/landing/landing_module.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    super.key,
  });

  @override
  State<LandingPage> createState() => _LandingPageState();
}

@override
void dispose() {
  Modular.dispose<LandingCubit>();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    LandingCubit landingCubit = Modular.get<LandingCubit>();
    return BlocProvider(
      create: (context) => landingCubit,
      child: BlocConsumer<LandingCubit, LandingState>(
        listener: (context, state) {
          screenSwitching(state.currentIndex);
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: const Color.fromARGB(255, 18, 17, 17),
            body: const RouterOutlet(),
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: state.currentIndex,
              onTap: (newIndex) {
                landingCubit.screenSwitch(newIndex);
              },
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
              backgroundColor: const Color.fromARGB(255, 18, 17, 17),
              selectedFontSize: 16,
              unselectedFontSize: 16,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 81, 80, 80)),
              selectedItemColor: const Color.fromARGB(255, 215, 54, 108),
              unselectedItemColor: const Color.fromARGB(255, 81, 80, 80),
            ),
          );
        },
      ),
    );
  }

  void screenSwitching(int currentIndex) {
    // if (currentIndex == 0) {
    //   Modular.to.navigate(LandingPagePaths.homeModulePath);
    // } else if (currentIndex == 1) {
    //   Modular.to.navigate(LandingPagePaths.competitionModulePath);
    // } else {
    //   Modular.to.navigate(LandingPagePaths.accountModulePath);
    // }
    switch (currentIndex) {
      case 0:
        Modular.to.navigate(LandingPagePaths.homeModulePath);
      case 1:
        Modular.to.navigate(LandingPagePaths.competitionModulePath);
      case 2:
        Modular.to.navigate(LandingPagePaths.accountModulePath);
      default:
        Modular.to.navigate(LandingPagePaths.homeModulePath);
    }
  }
}
