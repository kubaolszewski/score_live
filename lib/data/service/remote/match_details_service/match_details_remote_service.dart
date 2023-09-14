import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../network/api.client.dart';
import '../../api_responses_provider.dart';

part 'match_details_remote_service.g.dart';

@RestApi()
abstract class MatchDetailsRemoteService {
  static MatchDetailsRemoteService create(ApiClient dio) => _MatchDetailsRemoteService(dio.dio);

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
  Future<MatchH2H> fetchTeamsH2h({
    @Query("h2h") required String teamsIdNumbers,
    @Query("last") required String lastFixtures,
  });

  @GET('/standings')
  Future<Standings> fetchTeamStandings({
    @Query("league") required String leagueID,
    @Query("season") required String season,
  });
}
