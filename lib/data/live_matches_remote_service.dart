import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:score_live/data/api.client.dart';
import 'package:score_live/data/live_matches_fixtures.dart';

part 'live_matches_remote_service.g.dart';

@RestApi()
abstract class LiveMatchesRemoteService {
  static LiveMatchesRemoteService create(ApiClient dio) => _LiveMatchesRemoteService(dio.dio);

  @GET('/fixtures')
  Future<LiveMatchesFixtures> fetchMatchesByDate({
    @Query("league") required String league,
    @Query("season") required String season,
    @Query("date") required String date,
  });

  @GET('/fixtures')
  Future<LiveMatchesFixtures> fetchLiveMatches({
    @Query("live") required String live,
  });

  @GET('/fixtures/events')
  Future<MatchEvents> fetchMatchEvents({
    @Query("fixture") required String matchID,
  });
}
