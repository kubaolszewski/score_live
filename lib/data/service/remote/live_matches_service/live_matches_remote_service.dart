import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../network/api.client.dart';
import '../../api_responses_provider.dart';

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
}
