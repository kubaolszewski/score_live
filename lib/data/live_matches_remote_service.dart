import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:score_live/data/api.client.dart';
import 'package:score_live/data/live_matches_response.dart';

part 'live_matches_remote_service.g.dart';


@RestApi()
abstract class LiveMatchesRemoteService {
  static LiveMatchesRemoteService create(ApiClient dio) => _LiveMatchesRemoteService(dio.dio);

  @GET('/fixtures')
  Future<LiveMatchesResponse> fetchLiveMatches(
    @Query('live=all') String live,
  );
}
