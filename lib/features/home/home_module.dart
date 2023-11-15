import 'package:flutter_modular/flutter_modular.dart';
import '../../common/constants/app_route_paths.dart';
import '../../data/data_module.dart';
import 'cubit/home_cubit.dart';
import 'home_screen.dart';
import 'home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'home_tabs/upcoming_tab/cubit/upcoming_tab_cubit.dart';
import 'home_widgets/live_now/cubit/live_now_cubit.dart';
import 'match_details/cubit/match_details_cubit.dart';
import 'match_details/match_details_module.dart';
import 'match_details/match_details_screen.dart';

import '../competiton/competition_screen.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [
        DataModule(),
      ];

  @override
  void binds(Injector i) {
    i.addSingleton<HomeCubit>(HomeCubit.new);
    i.addSingleton<MatchDetailsCubit>(MatchDetailsCubit.new);
    i.addSingleton<LiveNowCubit>(LiveNowCubit.new);
    i.addSingleton<ScoreTabCubit>(ScoreTabCubit.new);
    i.addSingleton<UpcomingTabCubit>(UpcomingTabCubit.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      HomeScreen.path,
      child: (context) => const HomeScreen(),
    );
    r.child(
      MatchDetailsScreen.path,
      child: (context) => MatchDetailsScreen(liveMatch: r.args.data),
    );
    r.child(
      CompetitionScreen.path,
      child: ((context) => const CompetitionScreen()),
    );
    r.module(
      AppRoutePaths.matchDetailsPath,
      module: MatchDetailsModule(),
    );
  }
}
