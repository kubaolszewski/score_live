import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition_screen.dart';
import 'package:score_live/app/features/competiton/competition_tabs/region_tab/cubit/region_tab_cubit.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/app/features/competiton/searched_results/searched_results_screen.dart';
import 'package:score_live/data/api.client.dart';
import 'package:score_live/data/browsing_remote_service.dart';
import 'package:score_live/repositories/competition_screen_repository.dart';

class CompetitionModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => ApiClient()),
        Bind.factory((i) => BrowsingRemoteService.create(i())),
        Bind.factory((i) => CompetitionScreenRepository(i())),
        Bind.singleton((i) => CompetitionCubit(i())),
        Bind.singleton((i) => TopResultsTabCubit(i())),
        Bind.singleton((i) => RegionTabCubit(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          CompetitionPath.path,
          child: ((context, args) => const CompetitionScreen()),
        ),
        ChildRoute(
          CompetitionPath.searchedResultsScreen,
          child: ((context, args) => SearchedResultsScreen(args.data)),
        ),
      ];
}

mixin CompetitionPath {
  static String path = '/competition';
  static String searchedResultsScreen = '/search-results';

  static String searchedTeamsPath = '$path$searchedResultsScreen';
}
