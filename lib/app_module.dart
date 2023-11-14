import 'package:flutter_modular/flutter_modular.dart';
import 'common/constants/app_route_paths.dart';
import 'features/landing/landing_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(AppRoutePaths.landingPath, module: LandingModule());
  }
}
