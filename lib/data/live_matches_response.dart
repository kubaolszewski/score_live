import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/live_match_tile_model.dart';

part 'live_matches_response.g.dart';
part 'live_matches_response.freezed.dart';

@freezed
class LiveMatchesFixtures with _$LiveMatchesFixtures{
  factory LiveMatchesFixtures (
    final List<LiveMatchTileModel> response,
   ) = _LiveMatchesFixtures;

  factory LiveMatchesFixtures.fromJson(Map<String, dynamic> json) =>
      _$LiveMatchesFixturesFromJson(json);
}

@freezed
class LiveMatchesResponse with _$LiveMatchesResponse{
  factory LiveMatchesResponse (
    final LiveMatchesFixtures fixtures,
   ) = _LiveMatchesResponse;

  factory LiveMatchesResponse.fromJson(Map<String, dynamic> json) =>
      _$LiveMatchesResponseFromJson(json);
}