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

_$_Assist _$$_AssistFromJson(Map<String, dynamic> json) => _$_Assist(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_AssistToJson(_$_Assist instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      id: json['id'] as int?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      id: json['id'] as int?,
      name: json['name'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'logo': instance.logo,
    };

_$_Time _$$_TimeFromJson(Map<String, dynamic> json) => _$_Time(
      elapsed: json['elapsed'] as int?,
      extra: json['extra'] as int?,
    );

Map<String, dynamic> _$$_TimeToJson(_$_Time instance) => <String, dynamic>{
      'elapsed': instance.elapsed,
      'extra': instance.extra,
    };
