import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/di/di_network_module.dart';
import 'package:score_live/app/di/di_repository_module.dart';
import 'package:score_live/app/di/di_services_module.dart';
import 'package:score_live/app/features/account/account_screen.dart';
import 'package:score_live/app/features/account/account_module.dart';
import 'package:score_live/app/features/competiton/competition_screen.dart';
import 'package:score_live/app/features/competiton/competition_module.dart';
import 'package:score_live/app/features/competiton/competition_tabs/region_tab/cubit/region_tab_cubit.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/app/features/competiton/searched_results/result_details/cubit/result_details_cubit.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_module.dart';
import 'package:score_live/app/features/home/home_screen.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'package:score_live/app/features/home/home_tabs/upcoming_tab/cubit/upcoming_tab_cubit.dart';
import 'package:score_live/app/features/home/home_widgets/live_now/cubit/live_now_cubit.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/features/landing/cubit/landing_cubit.dart';
import 'package:score_live/app/features/landing/landing_screen.dart';

class LandingModule extends Module {
  @override
  final List<Module> imports = [
    DINetworkModule(),
    DIServicesModule(),
    DIRepositoryModule(),
  ];

  @override
  List<Bind> get binds => [
        Bind.singleton((i) => LandingCubit()),
        Bind.singleton((i) => HomeCubit()),
        Bind.singleton((i) => MatchDetailsCubit(i())),
        Bind.singleton((i) => CompetitionCubit(i())),
        Bind.singleton((i) => LiveNowCubit(i())),
        Bind.singleton((i) => UpcomingTabCubit(i())),
        Bind.singleton((i) => ScoreTabCubit(i())),
        Bind.singleton((i) => TopResultsTabCubit(i())),
        Bind.singleton((i) => RegionTabCubit(i())),
        Bind.singleton((i) => ResultDetailsCubit()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          LandingScreenPaths.mainPath,
          transition: TransitionType.noTransition,
          child: (context, args) => const LandingScreen(),
          children: [
            ChildRoute(
              LandingScreenPaths.homeModulePath,
              transition: TransitionType.noTransition,
              child: (context, args) => const HomeScreen(),
            ),
            ChildRoute(
              LandingScreenPaths.competitionModulePath,
              transition: TransitionType.noTransition,
              child: (context, args) => const CompetitionScreen(),
            ),
            ChildRoute(
              LandingScreenPaths.accountModulePath,
              transition: TransitionType.noTransition,
              child: (context, args) => const AccountScreen(),
            ),
          ],
        ),
        ModuleRoute(
          LandingScreenPaths.homeModulePath,
          module: HomeModule(),
        ),
        ModuleRoute(
          LandingScreenPaths.competitionModulePath,
          module: CompetitionModule(),
        ),
        ModuleRoute(
          LandingScreenPaths.accountModulePath,
          module: AccountModule(),
        ),
      ];
}

mixin LandingScreenPaths {
  static String mainPath = '/';
  static String homeModulePath = '/home';
  static String competitionModulePath = '/competition';
  static String accountModulePath = '/account';
}
