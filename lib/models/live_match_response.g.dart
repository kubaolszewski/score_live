// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_match_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveMatchResponse _$$_LiveMatchResponseFromJson(Map<String, dynamic> json) =>
    _$_LiveMatchResponse(
      fixture: json['fixture'] == null
          ? null
          : Fixture.fromJson(json['fixture'] as Map<String, dynamic>),
      league: json['league'] == null
          ? null
          : League.fromJson(json['league'] as Map<String, dynamic>),
      teams: json['teams'] == null
          ? null
          : Teams.fromJson(json['teams'] as Map<String, dynamic>),
      goals: json['goals'] == null
          ? null
          : Goals.fromJson(json['goals'] as Map<String, dynamic>),
      score: json['score'] == null
          ? null
          : Score.fromJson(json['score'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LiveMatchResponseToJson(
        _$_LiveMatchResponse instance) =>
    <String, dynamic>{
      'fixture': instance.fixture,
      'league': instance.league,
      'teams': instance.teams,
      'goals': instance.goals,
      'score': instance.score,
    };

_$_Fixture _$$_FixtureFromJson(Map<String, dynamic> json) => _$_Fixture(
      id: json['id'] as int?,
      referee: json['referee'] as String?,
      timezone: json['timezone'] as String?,
      date: json['date'] as String?,
      timestamp: json['timestamp'] as int?,
      periods: json['periods'] == null
          ? null
          : Periods.fromJson(json['periods'] as Map<String, dynamic>),
      venue: json['venue'] == null
          ? null
          : Venue.fromJson(json['venue'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FixtureToJson(_$_Fixture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referee': instance.referee,
      'timezone': instance.timezone,
      'date': instance.date,
      'timestamp': instance.timestamp,
      'periods': instance.periods,
      'venue': instance.venue,
      'status': instance.status,
    };

_$_Periods _$$_PeriodsFromJson(Map<String, dynamic> json) => _$_Periods(
      first: json['first'] as int?,
      second: json['second'] as int?,
    );

Map<String, dynamic> _$$_PeriodsToJson(_$_Periods instance) =>
    <String, dynamic>{
      'first': instance.first,
      'second': instance.second,
    };

_$_Status _$$_StatusFromJson(Map<String, dynamic> json) => _$_Status(
      long: json['long'] as String?,
      short: json['short'] as String?,
      elapsed: json['elapsed'] as int?,
    );

Map<String, dynamic> _$$_StatusToJson(_$_Status instance) => <String, dynamic>{
      'long': instance.long,
      'short': instance.short,
      'elapsed': instance.elapsed,
    };

_$_Venue _$$_VenueFromJson(Map<String, dynamic> json) => _$_Venue(
      id: json['id'] as int?,
      name: json['name'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$_VenueToJson(_$_Venue instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
    };

_$_Goals _$$_GoalsFromJson(Map<String, dynamic> json) => _$_Goals(
      home: json['home'] as int?,
      away: json['away'] as int?,
    );

Map<String, dynamic> _$$_GoalsToJson(_$_Goals instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

_$_League _$$_LeagueFromJson(Map<String, dynamic> json) => _$_League(
      id: json['id'] as int?,
      name: json['name'] as String?,
      country: json['country'] as String?,
      logo: json['logo'] as String?,
      flag: json['flag'] as String?,
      season: json['season'] as int?,
      round: json['round'] as String?,
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
      halftime: json['halftime'] == null
          ? null
          : Goals.fromJson(json['halftime'] as Map<String, dynamic>),
      fulltime: json['fulltime'] == null
          ? null
          : Goals.fromJson(json['fulltime'] as Map<String, dynamic>),
      extratime: json['extratime'] == null
          ? null
          : Goals.fromJson(json['extratime'] as Map<String, dynamic>),
      penalty: json['penalty'] == null
          ? null
          : Goals.fromJson(json['penalty'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScoreToJson(_$_Score instance) => <String, dynamic>{
      'halftime': instance.halftime,
      'fulltime': instance.fulltime,
      'extratime': instance.extratime,
      'penalty': instance.penalty,
    };

_$_Teams _$$_TeamsFromJson(Map<String, dynamic> json) => _$_Teams(
      home: json['home'] == null
          ? null
          : Home.fromJson(json['home'] as Map<String, dynamic>),
      away: json['away'] == null
          ? null
          : Away.fromJson(json['away'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeamsToJson(_$_Teams instance) => <String, dynamic>{
      'home': instance.home,
      'away': instance.away,
    };

_$_Home _$$_HomeFromJson(Map<String, dynamic> json) => _$_Home(
      id: json['id'] as int?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      winner: json['winner'] as bool?,
    );

Map<String, dynamic> _$$_HomeToJson(_$_Home instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'winner': instance.winner,
    };

_$_Away _$$_AwayFromJson(Map<String, dynamic> json) => _$_Away(
      id: json['id'] as int?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
      winner: json['winner'] as bool?,
    );

Map<String, dynamic> _$$_AwayToJson(_$_Away instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
      'winner': instance.winner,
    };
