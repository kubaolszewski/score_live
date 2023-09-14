import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_all_stats.freezed.dart';
part 'player_all_stats.g.dart';

@freezed
class Cards with _$Cards {
  const factory Cards({
    required int yellow,
    required int yellowred,
    required int red,
  }) = _Cards;

  factory Cards.fromJson(Map<String, dynamic> json) => _$CardsFromJson(json);
}

@freezed
class Dribbles with _$Dribbles {
  const factory Dribbles({
    required int attempts,
    required int? success,
    required dynamic past,
  }) = _Dribbles;

  factory Dribbles.fromJson(Map<String, dynamic> json) => _$DribblesFromJson(json);
}

@freezed
class Duels with _$Duels {
  const factory Duels({
    required int total,
    required int won,
  }) = _Duels;

  factory Duels.fromJson(Map<String, dynamic> json) => _$DuelsFromJson(json);
}

@freezed
class Fouls with _$Fouls {
  const factory Fouls({
    required int? drawn,
    required int? committed,
  }) = _Fouls;

  factory Fouls.fromJson(Map<String, dynamic> json) => _$FoulsFromJson(json);
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
    required int? assists,
    required dynamic saves,
  }) = _Goals;

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
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
class Passes with _$Passes {
  const factory Passes({
    required int total,
    required int? key,
    required int accuracy,
  }) = _Passes;

  factory Passes.fromJson(Map<String, dynamic> json) => _$PassesFromJson(json);
}

@freezed
class Penalty with _$Penalty {
  const factory Penalty({
    required dynamic won,
    required dynamic commited,
    required int scored,
    required int missed,
    required dynamic saved,
  }) = _Penalty;

  factory Penalty.fromJson(Map<String, dynamic> json) => _$PenaltyFromJson(json);
}

@freezed
class Shots with _$Shots {
  const factory Shots({
    required int total,
    required int on,
  }) = _Shots;

  factory Shots.fromJson(Map<String, dynamic> json) => _$ShotsFromJson(json);
}

@freezed
class Substitutes with _$Substitutes {
  const factory Substitutes({
    required int substitutesIn,
    required int out,
    required int bench,
  }) = _Substitutes;

  factory Substitutes.fromJson(Map<String, dynamic> json) => _$SubstitutesFromJson(json);
}

@freezed
class Tackles with _$Tackles {
  const factory Tackles({
    required int? total,
    required int? blocks,
    required int? interceptions,
  }) = _Tackles;

  factory Tackles.fromJson(Map<String, dynamic> json) => _$TacklesFromJson(json);
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
