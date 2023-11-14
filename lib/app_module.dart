import 'package:flutter_modular/flutter_modular.dart';
import 'features/landing/landing_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(AppModulePaths.landingModulePath, module: LandingModule());
  }
}

mixin AppModulePaths {
  static String landingModulePath = '/';
}
