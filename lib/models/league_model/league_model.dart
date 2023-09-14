import 'package:freezed_annotation/freezed_annotation.dart';
import 'league/league.dart';
import 'country/country.dart';
import 'season/season.dart';

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
