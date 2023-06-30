import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/live_match_model.dart';

part 'live_matches_fixtures.g.dart';
part 'live_matches_fixtures.freezed.dart';

@freezed
class LiveMatchesFixtures with _$LiveMatchesFixtures {
  factory LiveMatchesFixtures({
    List<LiveMatchModel>? response,
  }) = _LiveMatchesFixtures;

  factory LiveMatchesFixtures.fromJson(Map<String, dynamic> json) => _$LiveMatchesFixturesFromJson(json);
}