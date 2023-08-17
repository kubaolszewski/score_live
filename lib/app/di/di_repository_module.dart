import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/repositories/competition/competition_screen_repository.dart';
import 'package:score_live/repositories/competition/searched_result_details_repository.dart';
import 'package:score_live/repositories/home/home_screen_repository.dart';
import 'package:score_live/repositories/home/match_details_repository.dart';

class DIRepositoryModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<HomeScreenRepository>(
          (i) => HomeScreenRepository(i()),
          export: true,
        ),
        Bind.lazySingleton<MatchDetailsRepository>(
          (i) => MatchDetailsRepository(i()),
          export: true,
        ),
        Bind.lazySingleton<CompetitionScreenRepository>(
          (i) => CompetitionScreenRepository(i()),
          export: true,
        ),
        Bind.lazySingleton<SearchedResultDetailsRepository>(
          (i) => SearchedResultDetailsRepository(i()),
          export: true,
        ),
      ];
}
