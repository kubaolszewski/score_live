import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';

class CompetitionModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => CompetitionCubit()),
      ];

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
