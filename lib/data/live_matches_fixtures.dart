import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/league_model/league_model.dart';
import 'package:score_live/models/line_up_model/line_up_model.dart';
import 'package:score_live/models/live_match_model/live_match_model.dart';
import 'package:score_live/models/match_events_model/match_events_model.dart';
import 'package:score_live/models/team_model/team_model.dart';

part 'live_matches_fixtures.g.dart';
part 'live_matches_fixtures.freezed.dart';

@freezed
class LiveMatchesFixtures with _$LiveMatchesFixtures {
  factory LiveMatchesFixtures({
    List<LiveMatchModel>? response,
  }) = _LiveMatchesFixtures;

  factory LiveMatchesFixtures.fromJson(Map<String, dynamic> json) => _$LiveMatchesFixturesFromJson(json);
}

@freezed
class MatchEvents with _$MatchEvents {
  factory MatchEvents({
    @Default([]) List<MatchEventsModel> response,
  }) = _MatchEvents;

  factory MatchEvents.fromJson(Map<String, dynamic> json) => _$MatchEventsFromJson(json);
}

@freezed
class MatchLineUps with _$MatchLineUps {
  factory MatchLineUps({
    @Default([]) List<LineUpModel> response,
  }) = _MatchLineUps;

  factory MatchLineUps.fromJson(Map<String, dynamic> json) => _$MatchLineUpsFromJson(json);
}

@freezed
class League with _$League {
  factory League({
    @Default([]) List<LeagueModel> response,
  }) = _League;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}

@freezed
class Team with _$Team {
  factory Team({
    @Default([]) List<TeamModel> response,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
