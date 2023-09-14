import 'package:flutter_modular/flutter_modular.dart';
import 'result_details_screen.dart';

import 'cubit/result_details_cubit.dart';

class ResultDetailsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => ResultDetailsCubit(i())),
      ];
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
