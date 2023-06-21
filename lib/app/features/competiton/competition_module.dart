import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition.dart';

class CompetitionModule extends Module{
@override
  List<ModularRoute> get routes => [
        ChildRoute(
          CompetitionPagePath.path,
          child: ((context, args) => const CompetitionPage()),
        ),
      ];
}

mixin CompetitionPagePath {
  static String path = '/competition';
}