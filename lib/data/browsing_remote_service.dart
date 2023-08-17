import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:score_live/data/api.client.dart';
import 'package:score_live/data/live_matches_fixtures.dart';

part 'browsing_remote_service.g.dart';

@RestApi()
abstract class BrowsingRemoteService {
  static BrowsingRemoteService create(ApiClient dio) => _BrowsingRemoteService(dio.dio);

  @GET('/teams')
  Future<Team> fetchTeams({
    @Query("name") required String name,
  });

  @GET('/leagues')
  Future<League> fetchTopLeagues({
    @Query("season") required String season,
  });

  @GET('/leagues')
  Future<League> fetchLeaguesByName({
    @Query("name") required String name,
    @Query("season") required String season,
  });

  @GET('/leagues')
  Future<League> fetchLeaguesByCountry({
    @Query("country") required String country,
    @Query("season") required String season,
  });

  @GET('/fixtures')
  Future<LeagueResultsDetails> fetchResultsByLeagueId({
    @Query("league") required String leagueId,
    @Query("status") required String status,
    @Query("season") required String season,
  });

  @GET('/fixtures')
  Future<LeagueResultsDetails> fetchResultsByTeamId({
    @Query("league") required String teamId,
    @Query("status") required String status,
    @Query("season") required String season,
  });
}
