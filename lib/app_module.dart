import 'package:flutter_modular/flutter_modular.dart';
import 'common/constants/app_route_paths.dart';
import 'features/landing/landing_module.dart';
import 'features/onboarding/onboarding_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(
      AppRoutePaths.startPath,
      module: OnboardingModule(),
    );
    r.module(
      AppRoutePaths.landingPath,
      module: LandingModule(),
    );
  }
}
