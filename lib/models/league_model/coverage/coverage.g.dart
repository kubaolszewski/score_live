// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coverage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
