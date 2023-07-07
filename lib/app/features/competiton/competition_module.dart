import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition_screen.dart';

class CompetitionModule extends Module{
@override
  List<ModularRoute> get routes => [
        ChildRoute(
          CompetitionPath.path,
          child: ((context, args) => const CompetitionScreen()),
        ),
      ];
}

mixin CompetitionPath {
  static String path = '/competition';
}