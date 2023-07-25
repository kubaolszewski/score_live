// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_xi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StartXi _$$_StartXiFromJson(Map<String, dynamic> json) => _$_StartXi(
      player: json['player'] == null
          ? null
          : StartXIPlayer.fromJson(json['player'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_StartXiToJson(_$_StartXi instance) =>
    <String, dynamic>{
      'player': instance.player,
    };

_$_StartXiPlayer _$$_StartXiPlayerFromJson(Map<String, dynamic> json) =>
    _$_StartXiPlayer(
      id: json['id'] as int?,
      name: json['name'] as String?,
      number: json['number'] as int?,
      pos: json['pos'] as String?,
      grid: json['grid'] as String?,
    );

Map<String, dynamic> _$$_StartXiPlayerToJson(_$_StartXiPlayer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'pos': instance.pos,
      'grid': instance.grid,
    };
