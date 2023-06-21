import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home_page/home_page.dart';

class HomePageModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          HomePagePath.path,
          child: ((context, args) => const HomePage()),
        ),
      ];
}

mixin HomePagePath {
  static String path = '/home';
}
