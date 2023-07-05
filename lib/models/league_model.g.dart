// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LeagueModel _$$_LeagueModelFromJson(Map<String, dynamic> json) =>
    _$_LeagueModel(
      league: json['league'] == null
          ? null
          : League.fromJson(json['league'] as Map<String, dynamic>),
      country: json['country'] == null
          ? null
          : Country.fromJson(json['country'] as Map<String, dynamic>),
      seasons: (json['seasons'] as List<dynamic>?)
          ?.map((e) => Season.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LeagueModelToJson(_$_LeagueModel instance) =>
    <String, dynamic>{
      'league': instance.league,
      'country': instance.country,
      'seasons': instance.seasons,
    };

_$_Country _$$_CountryFromJson(Map<String, dynamic> json) => _$_Country(
      name: json['name'] as String?,
      code: json['code'] as String?,
      flag: json['flag'] as String?,
    );

Map<String, dynamic> _$$_CountryToJson(_$_Country instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'flag': instance.flag,
    };

_$_League _$$_LeagueFromJson(Map<String, dynamic> json) => _$_League(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$_LeagueToJson(_$_League instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'logo': instance.logo,
    };

_$_Season _$$_SeasonFromJson(Map<String, dynamic> json) => _$_Season(
      year: json['year'] as int?,
      start: json['start'] == null
          ? null
          : DateTime.parse(json['start'] as String),
      end: json['end'] == null ? null : DateTime.parse(json['end'] as String),
      current: json['current'] as bool?,
      coverage: json['coverage'] == null
          ? null
          : Coverage.fromJson(json['coverage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SeasonToJson(_$_Season instance) => <String, dynamic>{
      'year': instance.year,
      'start': instance.start?.toIso8601String(),
      'end': instance.end?.toIso8601String(),
      'current': instance.current,
      'coverage': instance.coverage,
    };

_$_Coverage _$$_CoverageFromJson(Map<String, dynamic> json) => _$_Coverage(
      fixtures: json['fixtures'] == null
          ? null
          : Fixtures.fromJson(json['fixtures'] as Map<String, dynamic>),
      standings: json['standings'] as bool?,
      players: json['players'] as bool?,
      topScorers: json['topScorers'] as bool?,
      topAssists: json['topAssists'] as bool?,
      topCards: json['topCards'] as bool?,
      injuries: json['injuries'] as bool?,
      predictions: json['predictions'] as bool?,
      odds: json['odds'] as bool?,
    );

Map<String, dynamic> _$$_CoverageToJson(_$_Coverage instance) =>
    <String, dynamic>{
      'fixtures': instance.fixtures,
      'standings': instance.standings,
      'players': instance.players,
      'topScorers': instance.topScorers,
      'topAssists': instance.topAssists,
      'topCards': instance.topCards,
      'injuries': instance.injuries,
      'predictions': instance.predictions,
      'odds': instance.odds,
    };

_$_Fixtures _$$_FixturesFromJson(Map<String, dynamic> json) => _$_Fixtures(
      events: json['events'] as bool?,
      lineups: json['lineups'] as bool?,
      statisticsFixtures: json['statisticsFixtures'] as bool?,
      statisticsPlayers: json['statisticsPlayers'] as bool?,
    );

Map<String, dynamic> _$$_FixturesToJson(_$_Fixtures instance) =>
    <String, dynamic>{
      'events': instance.events,
      'lineups': instance.lineups,
      'statisticsFixtures': instance.statisticsFixtures,
      'statisticsPlayers': instance.statisticsPlayers,
    };
