import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/match_details/cubit/match_details_cubit.dart';
import 'package:score_live/app/features/home/match_details/match_details_screen.dart';

class MatchDetailsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => MatchDetailsCubit(i())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          MatchDetailsPath.matchDetailsScreen,
          child: (context, args) => MatchDetailsScreen(liveMatch: args.data),
        ),
      ];
}

mixin MatchDetailsPath {
  static String homePath = '/home';
  static String matchDetailsScreen = '/match-details';

  static String matchDetailsPath = '$homePath$matchDetailsScreen';
}
