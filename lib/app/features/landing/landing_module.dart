import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/account/account.dart';
import 'package:score_live/app/features/account/account_module.dart';
import 'package:score_live/app/features/competiton/competition.dart';
import 'package:score_live/app/features/competiton/competition_module.dart';
import 'package:score_live/app/features/home/home_module.dart';
import 'package:score_live/app/features/home/home.dart';
import 'package:score_live/app/features/landing/landing.dart';

class LandingModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          LandingPagePaths.mainPath,
          transition: TransitionType.noTransition,
          child: (context, args) => const LandingPage(),
          children: [
            ChildRoute(LandingPagePaths.homePageModulePath, child: (context, args) => const HomePage()),
            ChildRoute(LandingPagePaths.competitionPageModulePath, child: (context, args) => const CompetitionPage()),
            ChildRoute(LandingPagePaths.accountPageModulePath, child: (context, args) => const AccountPage()),
          ],
        ),
        ModuleRoute(LandingPagePaths.homePageModulePath, module: HomeModule()),
        ModuleRoute(LandingPagePaths.competitionPageModulePath, module: CompetitionModule()),
        ModuleRoute(LandingPagePaths.accountPageModulePath, module: AccountModule()),
      ];
}

mixin LandingPagePaths {
  static String mainPath = '/';
  static String homePageModulePath = '/home';
  static String competitionPageModulePath = '/competition';
  static String accountPageModulePath = '/account';
}
