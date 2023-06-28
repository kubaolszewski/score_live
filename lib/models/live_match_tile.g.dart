// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_match_tile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveMatchTile _$$_LiveMatchTileFromJson(Map<String, dynamic> json) =>
    _$_LiveMatchTile(
      liveMatchTileGet: json['liveMatchTileGet'] as String,
      parameters:
          Parameters.fromJson(json['parameters'] as Map<String, dynamic>),
      errors: json['errors'] as List<dynamic>,
      results: json['results'] as int,
      paging: Paging.fromJson(json['paging'] as Map<String, dynamic>),
      response: (json['response'] as List<dynamic>)
          .map((e) => Response.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LiveMatchTileToJson(_$_LiveMatchTile instance) =>
    <String, dynamic>{
      'liveMatchTileGet': instance.liveMatchTileGet,
      'parameters': instance.parameters,
      'errors': instance.errors,
      'results': instance.results,
      'paging': instance.paging,
      'response': instance.response,
    };

_$_Paging _$$_PagingFromJson(Map<String, dynamic> json) => _$_Paging(
      current: json['current'] as int,
      total: json['total'] as int,
    );

Map<String, dynamic> _$$_PagingToJson(_$_Paging instance) => <String, dynamic>{
      'current': instance.current,
      'total': instance.total,
    };

_$_Parameters _$$_ParametersFromJson(Map<String, dynamic> json) =>
    _$_Parameters(
      live: json['live'] as String,
    );

Map<String, dynamic> _$$_ParametersToJson(_$_Parameters instance) =>
    <String, dynamic>{
      'live': instance.live,
    };

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      fixture: Fixture.fromJson(json['fixture'] as Map<String, dynamic>),
      league: League.fromJson(json['league'] as Map<String, dynamic>),
      teams: Goals.fromJson(json['teams'] as Map<String, dynamic>),
      goals: Goals.fromJson(json['goals'] as Map<String, dynamic>),
      score: Score.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'fixture': instance.fixture,
      'league': instance.league,
      'teams': instance.teams,
      'goals': instance.goals,
      'score': instance.score,
    };

_$_Fixture _$$_FixtureFromJson(Map<String, dynamic> json) => _$_Fixture(
      id: json['id'] as int,
      referee: json['referee'],
      timezone: json['timezone'] as String,
      date: DateTime.parse(json['date'] as String),
      timestamp: json['timestamp'] as int,
      periods: Periods.fromJson(json['periods'] as Map<String, dynamic>),
      venue: Venue.fromJson(json['venue'] as Map<String, dynamic>),
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FixtureToJson(_$_Fixture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referee': instance.referee,
      'timezone': instance.timezone,
      'date': instance.date.toIso8601String(),
      'timestamp': instance.timestamp,
      'periods': instance.periods,
      'venue': instance.venue,
      'status': instance.status,
    };

_$_Periods _$$_PeriodsFromJson(Map<String, dynamic> json) => _$_Periods(
      first: json['first'] as int,
      second: json['second'],
    );

Map<String, dynamic> _$$_PeriodsToJson(_$_Periods instance) =>
    <String, dynamic>{
      'first': instance.first,
      'second': instance.second,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      long: json['long'] as String,
      short: json['short'] as String,
      elapsed: json['elapsed'] as int,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'long': instance.long,
      'short': instance.short,
      'elapsed': instance.elapsed,
    };

_$_Venue _$$_VenueFromJson(Map<String, dynamic> json) => _$_Venue(
      id: json['id'] as int,
      name: json['name'] as String,
      city: json['city'] as String,
    );

Map<String, dynamic> _$$_VenueToJson(_$_Venue instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
    };

_$_Goals _$$_GoalsFromJson(Map<String, dynamic> json) => _$_Goals(
      home: json['home'],
      away: json['away'],
    );

Map<String, dynamic> _$$_GoalsToJson(_$_Goals instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

_$_AwayClass _$$_AwayClassFromJson(Map<String, dynamic> json) => _$_AwayClass(
      id: json['id'] as int,
      name: json['name'] as String,
      logo: json['logo'] as String,
      winner: json['winner'] as bool,
    );

Map<String, dynamic> _$$_AwayClassToJson(_$_AwayClass instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'winner': instance.winner,
    };

_$_League _$$_LeagueFromJson(Map<String, dynamic> json) => _$_League(
      id: json['id'] as int,
      name: json['name'] as String,
      country: json['country'] as String,
      logo: json['logo'] as String,
      flag: json['flag'] as String,
      season: json['season'] as int,
      round: json['round'] as String,
    );

Map<String, dynamic> _$$_LeagueToJson(_$_League instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'logo': instance.logo,
      'flag': instance.flag,
      'season': instance.season,
      'round': instance.round,
    };

_$_Score _$$_ScoreFromJson(Map<String, dynamic> json) => _$_Score(
      halftime: Goals.fromJson(json['halftime'] as Map<String, dynamic>),
      fulltime: Goals.fromJson(json['fulltime'] as Map<String, dynamic>),
      extratime: Goals.fromJson(json['extratime'] as Map<String, dynamic>),
      penalty: Goals.fromJson(json['penalty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScoreToJson(_$_Score instance) => <String, dynamic>{
      'halftime': instance.halftime,
      'fulltime': instance.fulltime,
      'extratime': instance.extratime,
      'penalty': instance.penalty,
    };
