import 'package:flutter_modular/flutter_modular.dart';
import '../../data/data_module.dart';
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
  final List<Module> imports = [
    DataModule(),
  ];

  @override
  void binds(Injector i) {
    i.addSingleton<CompetitionCubit>(CompetitionCubit.new);
    i.addSingleton<TopResultsTabCubit>(TopResultsTabCubit.new);
    i.addSingleton<RegionTabCubit>(RegionTabCubit.new);
    i.addSingleton<ResultDetailsCubit>(ResultDetailsCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      CompetitionPath.path,
      child: ((context) => const CompetitionScreen()),
    );
    r.child(
      CompetitionPath.searchedLeaguesScreen,
      child: ((context) => SearchedLeaguesScreen(r.args.data)),
    );
    r.child(
      CompetitionPath.searchedTeamsScreen,
      child: ((context) => SearchedTeamsScreen(r.args.data)),
    );
    r.child(
      CompetitionPath.searchedResultDetailsScreen,
      child: ((context) => ResultDetailsScreen(params: r.args.data)),
    );
  }
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
