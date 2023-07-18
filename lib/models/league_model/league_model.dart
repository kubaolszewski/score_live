import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/league_model/league/league.dart';
import 'package:score_live/models/league_model/country/country.dart';
import 'package:score_live/models/league_model/season/season.dart';

part 'league_model.freezed.dart';
part 'league_model.g.dart';

@freezed
class LeagueModel with _$LeagueModel {
  const factory LeagueModel({
    League? league,
    Country? country,
    List<Season>? seasons,
  }) = _LeagueModel;

  factory LeagueModel.fromJson(Map<String, dynamic> json) => _$LeagueModelFromJson(json);
}
