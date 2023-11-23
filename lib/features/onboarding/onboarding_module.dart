import 'package:flutter_modular/flutter_modular.dart';

import '../../common/constants/app_route_paths.dart';
import '../landing/landing_module.dart';
import '../welcome_screen/welcome_screen.dart';

class OnboardingModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.module(AppRoutePaths.landingPath, module: LandingModule());
    r.child('/', child: (context) => const WelcomeScreen(), transition: TransitionType.noTransition);
  }
}
