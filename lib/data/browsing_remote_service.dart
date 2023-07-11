import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:score_live/data/api.client.dart';
import 'package:score_live/data/live_matches_fixtures.dart';

part 'browsing_remote_service.g.dart';

@RestApi()
abstract class BrowsingRemoteService {
  static BrowsingRemoteService create(ApiClient dio) => _BrowsingRemoteService(dio.dio);

  @GET('/teams')
  Future<Team> fetchTeamsByName({
    @Query("name") required String name,
  });

  @GET('/leagues')
  Future<League> fetchLeagues({
    @Query("season") required String season,
  });

  @GET('/leagues')
  Future<League> fetchLeaguesByName({
    @Query("name") required String name,
    @Query("season") required String season,
  });

  @GET('/leagues')
  Future<League> fetchLeaguesByRegion({
    @Query("last") required String last,
    @Query("season") required String season,
  });
}
