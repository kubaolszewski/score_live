import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/home_screen.dart';
import 'package:score_live/app/features/home/home_tabs/score_tab/cubit/score_tab_cubit.dart';
import 'package:score_live/app/features/home/home_widgets/live_now_view/cubit/live_now_view_cubit.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details.dart';
import 'package:score_live/data/api.client.dart';
import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/repositories/match_details_repository.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.factory((i) => ApiClient()),
        Bind.factory((i) => LiveMatchesRemoteService.create(i())),
        Bind.factory((i) => MatchDetailsRepository(i())),
        Bind.singleton((i) => MatchDetailsCubit(i())),
        Bind.singleton((i) => LiveNowViewCubit(i())),
        Bind.singleton((i) => ScoreTabCubit(i()))
      ];

  @override
  List<Module> get imports => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          HomePath.homePath,
          child: (context, args) => const HomeScreen(),
        ),
        ChildRoute(
          HomePath.matchDetailsScreen,
          child: (context, args) => MatchDetails(liveMatch: args.data),
        ),
      ];
}

mixin HomePath {
  static String homePath = '/home';
  static String matchDetailsScreen = '/match-details';

  static String matchDetailsPath = '$homePath$matchDetailsScreen';
}
