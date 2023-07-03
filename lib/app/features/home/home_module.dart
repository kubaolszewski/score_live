import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/home/home.dart';
import 'package:score_live/app/features/home/match_details/match_details.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

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
