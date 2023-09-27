import 'package:flutter_modular/flutter_modular.dart';
import '../../data/data_module.dart';
import '../account/account_screen.dart';
import '../account/account_module.dart';
import '../account/cubit/account_cubit.dart';
import '../competiton/competition_screen.dart';
import '../competiton/competition_module.dart';
import '../competiton/competition_tabs/region_tab/cubit/region_tab_cubit.dart';
import '../competiton/competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import '../competiton/cubit/competition_cubit.dart';
import '../competiton/searched_results/result_details/cubit/result_details_cubit.dart';
import '../home/cubit/home_cubit.dart';
import '../home/home_module.dart';
import '../home/home_screen.dart';
import '../home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import '../home/home_tabs/upcoming_tab/cubit/upcoming_tab_cubit.dart';
import '../home/home_widgets/live_now/cubit/live_now_cubit.dart';
import '../home/match_details/cubit/match_details_cubit.dart';
import 'landing_screen.dart';

class LandingModule extends Module {
  @override
  final List<Module> imports = [
    DataModule(),
  ];

  @override
  List<Bind> get binds => [
        Bind.singleton((i) => HomeCubit()),
        Bind.singleton((i) => MatchDetailsCubit(i())),
        Bind.singleton((i) => CompetitionCubit(i())),
        Bind.singleton((i) => LiveNowCubit(i())),
        Bind.singleton((i) => UpcomingTabCubit(i())),
        Bind.singleton((i) => ScoreTabCubit(i())),
        Bind.singleton((i) => TopResultsTabCubit(i())),
        Bind.singleton((i) => RegionTabCubit(i())),
        Bind.singleton((i) => ResultDetailsCubit(i())),
        Bind.singleton((i) => AccountCubit()),
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
