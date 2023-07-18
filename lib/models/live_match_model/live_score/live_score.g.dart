// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_score.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
