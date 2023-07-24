// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_colors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeamColors _$$_TeamColorsFromJson(Map<String, dynamic> json) =>
    _$_TeamColors(
      player: json['player'] == null
          ? null
          : ColorProperties.fromJson(json['player'] as Map<String, dynamic>),
      goalkeeper: json['goalkeeper'] == null
          ? null
          : ColorProperties.fromJson(
              json['goalkeeper'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeamColorsToJson(_$_TeamColors instance) =>
    <String, dynamic>{
      'player': instance.player,
      'goalkeeper': instance.goalkeeper,
    };

_$_ColorProperties _$$_ColorPropertiesFromJson(Map<String, dynamic> json) =>
    _$_ColorProperties(
      primary: json['primary'] as String?,
      number: json['number'] as String?,
      border: json['border'] as String?,
    );

Map<String, dynamic> _$$_ColorPropertiesToJson(_$_ColorProperties instance) =>
    <String, dynamic>{
      'primary': instance.primary,
      'number': instance.number,
      'border': instance.border,
    };
