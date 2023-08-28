import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/features/competiton/searched_results/result_details/cubit/result_details_cubit.dart';
import 'package:score_live/app/features/competiton/searched_results/result_details/result_details_screen.dart';

class ResultDetailsModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<ResultDetailsCubit>(
          (i) => ResultDetailsCubit(i()),
        ),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          ResultDetailsPath.resultDetailsScreen,
          child: (context, args) => const ResultDetailsScreen(),
        )
      ];
}

mixin ResultDetailsPath {
  static String competitionPath = '/competition';
  static String resultDetailsScreen = '/result-details';

  static String resultDetailsPath = '$competitionPath$resultDetailsScreen';
}
