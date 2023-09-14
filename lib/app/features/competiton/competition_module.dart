import 'package:flutter_modular/flutter_modular.dart';
import 'competition_screen.dart';
import 'competition_tabs/region_tab/cubit/region_tab_cubit.dart';
import 'competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import 'cubit/competition_cubit.dart';
import 'searched_results/result_details/cubit/result_details_cubit.dart';
import 'searched_results/result_details/result_details_screen.dart';
import 'searched_results/searched_leagues/searched_leagues_screen.dart';
import 'searched_results/searched_teams/searched_teams_screen.dart';

class CompetitionModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => CompetitionCubit(i())),
        Bind.singleton((i) => TopResultsTabCubit(i())),
        Bind.singleton((i) => RegionTabCubit(i())),
        Bind.singleton((i) => ResultDetailsCubit(i())),

      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          CompetitionPath.path,
          child: ((context, args) => const CompetitionScreen()),
        ),
        ChildRoute(
          CompetitionPath.searchedLeaguesScreen,
          child: ((context, args) => SearchedLeaguesScreen(args.data)),
        ),
        ChildRoute(
          CompetitionPath.searchedTeamsScreen,
          child: ((context, args) => SearchedTeamsScreen(args.data)),
        ),
        ChildRoute(
          CompetitionPath.searchedResultDetailsScreen,
          child: ((context, args) => ResultDetailsScreen(params: args.data)),
        ),
      ];
}

mixin CompetitionPath {
  static String path = '/competition';
  static String searchedTeamsScreen = '/teams-results';
  static String searchedLeaguesScreen = '/leagues-results';
  static String searchedResultDetailsScreen = '/result-details';

  static String searchedTeamsPath = '$path$searchedTeamsScreen';
  static String searchedLeaguesPath = '$path$searchedLeaguesScreen';
  static String searchedResultDetailsPath = '$path$searchedResultDetailsScreen';
}
