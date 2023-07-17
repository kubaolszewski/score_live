import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/account/account_screen.dart';
import 'package:score_live/app/features/account/account_module.dart';
import 'package:score_live/app/features/competiton/competition_screen.dart';
import 'package:score_live/app/features/competiton/competition_module.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_module.dart';
import 'package:score_live/app/features/home/home_screen.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'package:score_live/app/features/home/home_widgets/live_now/cubit/live_now_cubit.dart';
import 'package:score_live/app/features/landing/cubit/landing_cubit.dart';
import 'package:score_live/app/features/landing/landing.dart';
import 'package:score_live/data/api.client.dart';
import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/repositories/home_screen_repository.dart';

class LandingModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => LandingCubit()),
        Bind.factory((i) => ApiClient()),
        Bind.factory((i) => LiveMatchesRemoteService.create(i())),
        Bind.factory((i) => HomeScreenRepository(i())),
        Bind.singleton((i) => HomeCubit()),
        Bind.singleton((i) => LiveNowCubit(i())),
        Bind.singleton((i) => ScoreTabCubit(i()))
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
