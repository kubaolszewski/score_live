import 'package:flutter_modular/flutter_modular.dart';

import '../welcome_screen/welcome_screen.dart';

class OnboardingModule extends Module {
  @override
  void binds(Injector i) {}

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const WelcomeScreen(),
      transition: TransitionType.noTransition,
    );
  }
}
