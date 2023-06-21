import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/landing_page.dart';

class LandingPageModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          LandingPagePath.path,
          child: ((context, args) => LandingPage(user: args.data)),
        ),
      ];
}

mixin LandingPagePath {
  static String path = '/';
}
