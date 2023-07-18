// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_events_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MatchEventsModel _$$_MatchEventsModelFromJson(Map<String, dynamic> json) =>
    _$_MatchEventsModel(
      time: json['time'] == null
          ? null
          : Time.fromJson(json['time'] as Map<String, dynamic>),
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      player: json['player'] == null
          ? null
          : Player.fromJson(json['player'] as Map<String, dynamic>),
      assist: json['assist'] == null
          ? null
          : Assist.fromJson(json['assist'] as Map<String, dynamic>),
      type: json['type'] as String?,
      detail: json['detail'] as String?,
      comments: json['comments'] as String?,
    );

Map<String, dynamic> _$$_MatchEventsModelToJson(_$_MatchEventsModel instance) =>
    <String, dynamic>{
      'time': instance.time,
      'team': instance.team,
      'player': instance.player,
      'assist': instance.assist,
      'type': instance.type,
      'detail': instance.detail,
      'comments': instance.comments,
    };
