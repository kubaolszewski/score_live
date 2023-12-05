import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../common/extensions/context/applocalization_context.dart';
import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_route_paths.dart';
import '../../../common/extensions/navigation/navigation_on_string_ext.dart';

class LandingView extends HookWidget {
  const LandingView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0);

    return Scaffold(
      backgroundColor: AppColors.backgroundBlack,
      body: const SafeArea(
        maintainBottomViewPadding: true,
        child: RouterOutlet(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex.value,
        onTap: (newIndex) {
          currentIndex.value = newIndex;
          switch (currentIndex.value) {
            case 0:
              Modular.to.pushNamed(AppRoutePaths.homePath.relativePath);
            case 1:
              Modular.to.pushNamed(AppRoutePaths.competitionPath.relativePath);
            case 2:
              Modular.to.pushNamed(AppRoutePaths.accountPath.relativePath);
            default:
              Modular.to.pushNamed(AppRoutePaths.homePath.relativePath);
          }
        },
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
  }
}
