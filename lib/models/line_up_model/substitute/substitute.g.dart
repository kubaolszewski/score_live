// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substitute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Substitute _$$_SubstituteFromJson(Map<String, dynamic> json) =>
    _$_Substitute(
      player: json['player'] == null
          ? null
          : SubstitutePlayer.fromJson(json['player'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SubstituteToJson(_$_Substitute instance) =>
    <String, dynamic>{
      'player': instance.player,
    };

_$_SubstitutePlayer _$$_SubstitutePlayerFromJson(Map<String, dynamic> json) =>
    _$_SubstitutePlayer(
      id: json['id'] as int?,
      name: json['name'] as String?,
      number: json['number'] as int?,
      pos: json['pos'] as String?,
      grid: json['grid'],
    );

Map<String, dynamic> _$$_SubstitutePlayerToJson(_$_SubstitutePlayer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'pos': instance.pos,
      'grid': instance.grid,
    };
