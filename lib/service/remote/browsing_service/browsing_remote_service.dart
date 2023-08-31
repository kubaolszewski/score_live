import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:score_live/service/api.client.dart';
import 'package:score_live/service/api_responses_provider.dart';

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

  @GET('/fixtures/rounds')
  Future<CurrentRounds> getAllRounds({
    @Query("league") required String leagueId,
    @Query("season") required String season,
  });

  @GET('/fixtures/rounds')
  Future<CurrentRounds> getCurrentRound({
    @Query("league") required String leagueId,
    @Query("season") required String season,
    @Query("current") String current = 'true',
  });

  @GET('/fixtures')
  Future<ResultsDetails> fetchResultsByLeagueId({
    @Query("league") required String leagueId,
    @Query("round") required String currentRound,
    @Query("season") required String season,
  });

  @GET('/fixtures')
  Future<ResultsDetails> fetchFixturesByLeagueId({
    @Query("league") required String leagueId,
    @Query("round") required String round,
    @Query("season") required String season,
  });

  @GET('/standings')
  Future<Standings> fetchStandings({
    @Query("league") required String leagueID,
    @Query("season") required String season,
  });
}
