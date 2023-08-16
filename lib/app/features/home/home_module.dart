import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/cubit/home_cubit.dart';
import 'package:score_live/app/features/home/home_screen.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'package:score_live/app/features/home/home_tabs/upcoming_tab/cubit/upcoming_tab_cubit.dart';
import 'package:score_live/app/features/home/home_widgets/live_now/cubit/live_now_cubit.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_screen.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => HomeCubit()),
        Bind.singleton((i) => MatchDetailsCubit(i())),
        Bind.singleton((i) => LiveNowCubit(i())),
        Bind.singleton((i) => ScoreTabCubit(i())),
        Bind.singleton((i) => UpcomingTabCubit(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          HomePath.homePath,
          child: (context, args) => const HomeScreen(),
        ),
        ChildRoute(
          HomePath.matchDetailsScreen,
          child: (context, args) => MatchDetailsScreen(liveMatch: args.data),
        ),
      ];
}

mixin HomePath {
  static String homePath = '/home';
  static String matchDetailsScreen = '/match-details';

  static String matchDetailsPath = '$homePath$matchDetailsScreen';
}
