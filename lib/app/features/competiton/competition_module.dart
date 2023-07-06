import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/data/api.client.dart';
import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/repositories/competition_screen_repository.dart';

class CompetitionModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => ApiClient()),
        Bind.factory((i) => LiveMatchesRemoteService.create(i())),
        Bind.factory((i) => CompetitionScreenRepository(i())),
        Bind.singleton((i) => CompetitionCubit()),
        Bind.singleton((i) => TopResultsTabCubit(i()))
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          CompetitionPath.path,
          child: ((context, args) => CompetitionScreen()),
        ),
      ];
}

mixin CompetitionPath {
  static String path = '/competition';
}
