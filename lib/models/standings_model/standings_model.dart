import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/standings_model/standings/standings.dart';

part 'standings_model.freezed.dart';
part 'standings_model.g.dart';

@freezed
class StandingsModel with _$StandingsModel {
  const factory StandingsModel({
    League? league,
  }) = _StandingsModel;

  factory StandingsModel.fromJson(Map<String, dynamic> json) => _$StandingsModelFromJson(json);
}

@freezed
class League with _$League {
  const factory League({
    int? id,
    String? name,
    String? country,
    String? logo,
    String? flag,
    int? season,
    List<List<Standings>>? standings,
  }) = _League;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}
