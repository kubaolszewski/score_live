import 'package:flutter_modular/flutter_modular.dart';

import 'network/api.client.dart';
import 'repositories/competition/competition_screen_repository.dart';
import 'repositories/competition/searched_result_details_repository.dart';
import 'repositories/home/home_screen_repository.dart';
import 'repositories/home/match_details_repository.dart';
import 'service/remote/browsing_service/browsing_remote_service.dart';
import 'service/remote/live_matches_service/live_matches_remote_service.dart';
import 'service/remote/match_details_service/match_details_remote_service.dart';

class DataModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton<ApiClient>(
          (i) => ApiClient(),
          export: true,
        ),
        Bind.singleton<LiveMatchesRemoteService>(
          (i) => LiveMatchesRemoteService.create(i()),
          export: true,
        ),
        Bind.singleton<BrowsingRemoteService>(
          (i) => BrowsingRemoteService.create(i()),
          export: true,
        ),
        Bind.singleton<MatchDetailsRemoteService>(
          (i) => MatchDetailsRemoteService.create(i()),
          export: true,
        ),
        Bind.singleton<HomeScreenRepository>(
          (i) => HomeScreenRepository(i()),
          export: true,
        ),
        Bind.singleton<MatchDetailsRepository>(
          (i) => MatchDetailsRepository(i()),
          export: true,
        ),
        Bind.singleton<CompetitionScreenRepository>(
          (i) => CompetitionScreenRepository(i()),
          export: true,
        ),
        Bind.singleton<SearchedResultDetailsRepository>(
          (i) => SearchedResultDetailsRepository(i()),
          export: true,
        ),
      ];
}
