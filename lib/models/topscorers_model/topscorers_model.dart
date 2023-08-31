import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/topscorers_model/player/player.dart';
import 'package:score_live/models/topscorers_model/statistic/statistic.dart';

part 'topscorers_model.freezed.dart';
part 'topscorers_model.g.dart';

@freezed
class TopScorersModel with _$TopScorersModel {
  const factory TopScorersModel({
    required Player player,
    required List<Statistic> statistics,
  }) = _TopScorersModel;

  factory TopScorersModel.fromJson(Map<String, dynamic> json) => _$TopScorersModelFromJson(json);
}

@freezed
class PlayerLeague with _$PlayerLeague {
  const factory PlayerLeague({
    required int id,
    required String name,
    required String country,
    required String logo,
    required String flag,
    required int season,
  }) = _PlayerLeague;

  factory PlayerLeague.fromJson(Map<String, dynamic> json) => _$PlayerLeagueFromJson(json);
}

@freezed
class PlayerTeam with _$PlayerTeam {
  const factory PlayerTeam({
    required int id,
    required String name,
    required String logo,
  }) = _PlayerTeam;

  factory PlayerTeam.fromJson(Map<String, dynamic> json) => _$PlayerTeamFromJson(json);
}
