import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:score_live/data/api.client.dart';
import 'package:score_live/data/live_matches_fixtures.dart';

part 'live_matches_remote_service.g.dart';

@RestApi()
abstract class LiveMatchesRemoteService {
  static LiveMatchesRemoteService create(ApiClient dio) => _LiveMatchesRemoteService(dio.dio);

  @GET('/fixtures')
  Future<LiveMatchesFixtures> fetchLiveMatches({
    @Query("live") required String live,
  });

  @GET('/fixtures')
  Future<LiveMatchesFixtures> fetchMatchesByDate({
    @Query("status") required String status,
    @Query("date") required String date,
  });

  @GET('/fixtures/events')
  Future<MatchEvents> fetchMatchEvents({
    @Query("fixture") required String matchID,
  });

  @GET('/fixtures/lineups')
  Future<MatchLineUps> fetchMatchLineUps({
    @Query("fixture") required String matchID,
  });

  @GET('/fixtures/statistics')
  Future<MatchStatistics> fetchMatchStats({
    @Query("fixture") required String matchID,
  });

  @GET('/fixtures/headtohead')
  Future<LiveMatchesFixtures> fetchTeamsH2h({
    @Query("h2h") required String teamsIdNumbers,
    @Query("last") required String lastFixtures,
  });

  @GET('/standings')
  Future<Standings> fetchTeamStandings({
    @Query("league") required String leagueID,
    @Query("season") required String season,
  });
}
