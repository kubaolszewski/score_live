import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton_page/competition_page.dart';

class CompetitionPageModule extends Module{
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