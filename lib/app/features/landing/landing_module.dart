import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/account/account.dart';
import 'package:score_live/app/features/account/account_module.dart';
import 'package:score_live/app/features/competiton/competition.dart';
import 'package:score_live/app/features/competiton/competition_module.dart';
import 'package:score_live/app/features/home/home_module.dart';
import 'package:score_live/app/features/home/home.dart';
import 'package:score_live/app/features/landing/cubit/landing_cubit.dart';
import 'package:score_live/app/features/landing/landing.dart';

class LandingModule extends Module {
  
  @override
  List<Bind> get binds => [
        Bind.singleton(
          (i) => LandingCubit(),
        ),
      ];

  @override
  List<Module> get imports => [
        HomeModule(),
        CompetitionModule(),
        AccountModule(),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          LandingPagePaths.mainPath,
          transition: TransitionType.noTransition,
          child: (context, args) => const LandingPage(),
          children: [
            ChildRoute(
              LandingPagePaths.homeModulePath,
              child: (context, args) => const HomePage(),
            ),
            ChildRoute(
              LandingPagePaths.competitionModulePath,
              child: (context, args) => const CompetitionPage(),
            ),
            ChildRoute(
              LandingPagePaths.accountModulePath,
              child: (context, args) => const AccountPage(),
            ),
            ModuleRoute(
              LandingPagePaths.homeModulePath,
              module: HomeModule(),
            ),
            ModuleRoute(
              LandingPagePaths.competitionModulePath,
              module: CompetitionModule(),
            ),
            ModuleRoute(
              LandingPagePaths.accountModulePath,
              module: AccountModule(),
            ),
          ],
        ),
      ];
}

mixin LandingPagePaths {
  static String mainPath = '/';
  static String homeModulePath = '/home';
  static String competitionModulePath = '/competition';
  static String accountModulePath = '/account';
}
