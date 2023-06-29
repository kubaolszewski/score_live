import 'package:score_live/data/live_matches_remote_service.dart';
import 'package:score_live/models/live_match_response.dart';

class HomeScreenRepository {
  HomeScreenRepository(this.liveMatchesRemoteService);

  final LiveMatchesRemoteService liveMatchesRemoteService;

  Future<List<LiveMatchResponse>?> fetchLiveMatches() async {
    return (await liveMatchesRemoteService.fetchLiveMatches(league: "39", season: '2021', date: '2021-08-14')).response;
  }
}
