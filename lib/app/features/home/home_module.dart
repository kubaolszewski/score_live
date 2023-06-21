import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/home.dart';

class HomeModule extends Module {
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
