import 'package:flutter_modular/flutter_modular.dart';
import 'cubit/match_details_cubit.dart';
import 'match_details_screen.dart';

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
