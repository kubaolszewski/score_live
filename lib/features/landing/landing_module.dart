import 'package:flutter_modular/flutter_modular.dart';
import '../../common/constants/app_route_paths.dart';
import '../../data/data_module.dart';
import '../account/account_screen.dart';
import '../account/account_module.dart';
import '../account/cubit/account_cubit.dart';
import '../competiton/competition_screen.dart';
import '../competiton/competition_module.dart';
import '../competiton/competition_tabs/region_tab/cubit/region_tab_cubit.dart';
import '../competiton/competition_tabs/top_results_tab/cubit/top_results_tab_cubit.dart';
import '../competiton/cubit/competition_cubit.dart';
import '../competiton/searched_results/result_details/cubit/result_details_cubit.dart';
import '../home/cubit/home_cubit.dart';
import '../home/home_module.dart';
import '../home/home_screen.dart';
import '../home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import '../home/home_tabs/upcoming_tab/cubit/upcoming_tab_cubit.dart';
import '../home/home_widgets/live_now/cubit/live_now_cubit.dart';
import '../home/match_details/cubit/match_details_cubit.dart';
import 'landing_screen.dart';

class LandingModule extends Module {
  @override
  final List<Module> imports = [
    DataModule(),
  ];

  @override
  void binds(Injector i) {
    i.addSingleton<HomeCubit>(HomeCubit.new);
    i.addSingleton<MatchDetailsCubit>(MatchDetailsCubit.new);
    i.addSingleton<CompetitionCubit>(CompetitionCubit.new);
    i.addSingleton<LiveNowCubit>(LiveNowCubit.new);
    i.addSingleton<UpcomingTabCubit>(UpcomingTabCubit.new);
    i.addSingleton<ScoreTabCubit>(ScoreTabCubit.new);
    i.addSingleton<TopResultsTabCubit>(TopResultsTabCubit.new);
    i.addSingleton<RegionTabCubit>(RegionTabCubit.new);
    i.addSingleton<ResultDetailsCubit>(ResultDetailsCubit.new);
    i.addSingleton<AccountCubit>(AccountCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const LandingScreen(),
      transition: TransitionType.noTransition,
      children: [
        ChildRoute(
          HomeScreen.path,
          child: (context) => const HomeScreen(),
          transition: TransitionType.noTransition,
        ),
        ChildRoute(
          CompetitionScreen.path,
          transition: TransitionType.noTransition,
          child: (context) => const CompetitionScreen(),
        ),
        ChildRoute(
          AccountScreen.path,
          transition: TransitionType.noTransition,
          child: (context) => const AccountScreen(),
        ),
      ],
    );
    r.module(
      AppRoutePaths.homePath,
      module: HomeModule(),
    );
    r.module(
      AppRoutePaths.competitionPath,
      module: CompetitionModule(),
    );
    r.module(
      AppRoutePaths.accountPath,
      module: AccountModule(),
    );
  }
}
