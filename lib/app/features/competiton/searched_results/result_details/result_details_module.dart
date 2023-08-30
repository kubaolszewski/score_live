import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/searched_results/result_details/result_details_screen.dart';

class ResultDetailsModule extends Module {
  @override
  List<Bind> get binds => [];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          ResultDetailsPath.resultDetailsScreen,
          child: (context, args) => ResultDetailsScreen(params: args.data),
        )
      ];
}

mixin ResultDetailsPath {
  static String competitionPath = '/competition';
  static String resultDetailsScreen = '/result-details';

  static String resultDetailsPath = '$competitionPath$resultDetailsScreen';
}
