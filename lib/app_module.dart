import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/account_page/account_page_module.dart';
import 'package:score_live/app/features/home_page/home_page_module.dart';
import 'package:score_live/app/features/competiton_page/competition_page_module.dart';
import 'package:score_live/app/landing_page_guard.dart';
import 'package:score_live/app/landing_page_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          AppModulesPaths.landingPageModulePath,
          module: LandingPageModule(),
          guards: [LandingPageGuard()],
        ),
        ModuleRoute(AppModulesPaths.homePageModulePath, module: HomePageModule()),
        ModuleRoute(AppModulesPaths.competitionPageModulePath, module: CompetitionPageModule()),
        ModuleRoute(AppModulesPaths.accountPageModulePath, module: AccountPageModule())
      ];
}

mixin AppModulesPaths {
  static String landingPageModulePath = '/';
  static String homePageModulePath = '/home';
  static String competitionPageModulePath = '/competition';
  static String accountPageModulePath = '/account';
}
