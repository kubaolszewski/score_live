import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/home.dart';

class HomeModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          HomePath.path,
          child: ((context, args) => const HomeScreen()),
        ),
      ];
}

mixin HomePath {
  static String path = '/home';
}
