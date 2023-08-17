import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/competition_screen.dart';
import 'package:score_live/app/features/competiton/competition_tabs/region_tab/cubit/region_tab_cubit.dart';
import 'package:score_live/app/features/competiton/competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import 'package:score_live/app/features/competiton/searched_competition_screens/searched_leagues/searched_leagues_screen.dart';
import 'package:score_live/app/features/competiton/cubit/competition_cubit.dart';
import 'package:score_live/app/features/competiton/searched_competition_screens/searched_teams/searched_teams_screen.dart';

class CompetitionModule extends Module {
  @override
  List<Bind> get binds => [
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
          CompetitionPath.searchedLeaguesScreen,
          child: ((context, args) => SearchedLeaguesScreen(args.data)),
        ),
        ChildRoute(
          CompetitionPath.searchedTeamsScreen,
          child: ((context, args) => SearchedTeamsScreen(args.data)),
        ),
      ];
}

mixin CompetitionPath {
  static String path = '/competition';
  static String searchedTeamsScreen = '/teams-results';
  static String searchedLeaguesScreen = '/leagues-results';

  static String searchedTeamsPath = '$path$searchedTeamsScreen';
  static String searchedLeaguesPath = '$path$searchedLeaguesScreen';
}
