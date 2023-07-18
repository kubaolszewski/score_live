// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'season.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
