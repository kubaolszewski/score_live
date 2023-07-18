// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_match_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveMatchModel _$$_LiveMatchModelFromJson(Map<String, dynamic> json) =>
    _$_LiveMatchModel(
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

Map<String, dynamic> _$$_LiveMatchModelToJson(_$_LiveMatchModel instance) =>
    <String, dynamic>{
      'fixture': instance.fixture,
      'league': instance.league,
      'teams': instance.teams,
      'goals': instance.goals,
      'score': instance.score,
    };
