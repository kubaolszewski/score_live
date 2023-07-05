import 'package:freezed_annotation/freezed_annotation.dart';

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

@freezed
class Country with _$Country {
    const factory Country({
        String? name,
        String? code,
        String? flag,
    }) = _Country;

    factory Country.fromJson(Map<String, dynamic> json) => _$CountryFromJson(json);
}

@freezed
class League with _$League {
    const factory League({
        int? id,
        String? name,
        String? type,
        String? logo,
    }) = _League;

    factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}

@freezed
class Season with _$Season {
    const factory Season({
        int? year,
        DateTime? start,
        DateTime? end,
        bool? current,
        Coverage? coverage,
    }) = _Season;

    factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}

@freezed
class Coverage with _$Coverage {
    const factory Coverage({
        Fixtures? fixtures,
        bool? standings,
        bool? players,
        bool? topScorers,
        bool? topAssists,
        bool? topCards,
        bool? injuries,
        bool? predictions,
        bool? odds,
    }) = _Coverage;

    factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
}

@freezed
class Fixtures with _$Fixtures {
    const factory Fixtures({
        bool? events,
        bool? lineups,
        bool? statisticsFixtures,
        bool? statisticsPlayers,
    }) = _Fixtures;

    factory Fixtures.fromJson(Map<String, dynamic> json) => _$FixturesFromJson(json);
}
