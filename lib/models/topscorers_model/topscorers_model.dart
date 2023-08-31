import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/topscorers_model/player/player.dart';
import 'package:score_live/models/topscorers_model/statistic/statistic.dart';

part 'topscorers_model.freezed.dart';
part 'topscorers_model.g.dart';

@freezed
class TopScorers with _$TopScorers {
  const factory TopScorers({
    required Player player,
    required List<Statistic> statistics,
  }) = _TopScorers;

  factory TopScorers.fromJson(Map<String, dynamic> json) => _$TopScorersFromJson(json);
}

@freezed
class Games with _$Games {
  const factory Games({
    required int appearences,
    required int lineups,
    required int minutes,
    required dynamic number,
    required String position,
    required String rating,
    required bool captain,
  }) = _Games;

  factory Games.fromJson(Map<String, dynamic> json) => _$GamesFromJson(json);
}

@freezed
class Goals with _$Goals {
  const factory Goals({
    required int total,
    required int conceded,
  }) = _Goals;

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}

@freezed
class Assists with _$Assists {
  const factory Assists({
    required int? assists,
  }) = _Assists;

  factory Assists.fromJson(Map<String, dynamic> json) => _$AssistsFromJson(json);
}

@freezed
class Saves with _$Saves {
  const factory Saves({
    required dynamic saves,
  }) = _Saves;

  factory Saves.fromJson(Map<String, dynamic> json) => _$SavesFromJson(json);
}

@freezed
class League with _$League {
  const factory League({
    required int id,
    required String name,
    required String country,
    required String logo,
    required String flag,
    required int season,
  }) = _League;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}

@freezed
class Team with _$Team {
  const factory Team({
    required int id,
    required String name,
    required String logo,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
