import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/league_model/league_model.dart';
import '../models/line_up_model/line_up_model.dart';
import '../models/match_model/match_model.dart';
import '../models/match_events_model/match_events_model.dart';
import '../models/standings_model/standings_model.dart';
import '../models/statistics_model/statistics_model.dart';
import '../models/team_model/team_model.dart';
import '../models/topscorers_model/top_scorers_model.dart';

part 'api_responses_provider.g.dart';
part 'api_responses_provider.freezed.dart';

@freezed
class LiveMatchesFixtures with _$LiveMatchesFixtures {
  factory LiveMatchesFixtures({
    List<MatchModel>? response,
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
class MatchStatistics with _$MatchStatistics {
  factory MatchStatistics({
    @Default([]) List<StatisticsModel> response,
  }) = _MatchStatistics;

  factory MatchStatistics.fromJson(Map<String, dynamic> json) => _$MatchStatisticsFromJson(json);
}

@freezed
class MatchH2H with _$MatchH2H {
  factory MatchH2H({
    List<MatchModel>? response,
  }) = _MatchH2H;

  factory MatchH2H.fromJson(Map<String, dynamic> json) => _$MatchH2HFromJson(json);
}

@freezed
class Standings with _$Standings {
  factory Standings({
    @Default([]) List<StandingsModel> response,
  }) = _Standings;

  factory Standings.fromJson(Map<String, dynamic> json) => _$StandingsFromJson(json);
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

@freezed
class ResultsDetails with _$ResultsDetails {
  factory ResultsDetails({
    List<MatchModel>? response,
  }) = _ResultsDetails;

  factory ResultsDetails.fromJson(Map<String, dynamic> json) => _$ResultsDetailsFromJson(json);
}

@freezed
class CurrentRounds with _$CurrentRounds {
  const factory CurrentRounds({
    @Default([]) List<String> response,
  }) = _CurrentRound;

  factory CurrentRounds.fromJson(Map<String, dynamic> json) => _$CurrentRoundsFromJson(json);
}

@freezed
class TopScorers with _$TopScorers {
  factory TopScorers({
    @Default([]) List<TopScorersModel> response,
  }) = _TopScorers;

  factory TopScorers.fromJson(Map<String, dynamic> json) => _$TopScorersFromJson(json);
}
