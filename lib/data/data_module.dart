import 'package:dio/dio.dart';
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
  void exportedBinds(i) {
    i.addInstance<Dio>(Dio());
    i.addSingleton<ApiClient>(ApiClient.new);
    i.addSingleton<LiveMatchesRemoteService>(LiveMatchesRemoteService.create);
    i.addSingleton<BrowsingRemoteService>(BrowsingRemoteService.create);
    i.addSingleton<MatchDetailsRemoteService>(MatchDetailsRemoteService.create);
    i.addSingleton<HomeScreenRepository>(HomeScreenRepository.new);
    i.addSingleton<MatchDetailsRepository>(MatchDetailsRepository.new);
    i.addSingleton<CompetitionScreenRepository>(CompetitionScreenRepository.new);
    i.addSingleton<SearchedResultDetailsRepository>(SearchedResultDetailsRepository.new);
    super.exportedBinds(i);
  }
}
