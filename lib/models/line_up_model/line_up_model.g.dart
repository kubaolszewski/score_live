// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LineUpModel _$$_LineUpModelFromJson(Map<String, dynamic> json) =>
    _$_LineUpModel(
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      formation: json['formation'] as String?,
      startXi: (json['startXi'] as List<dynamic>?)
          ?.map((e) => StartXi.fromJson(e as Map<String, dynamic>))
          .toList(),
      substitutes: (json['substitutes'] as List<dynamic>?)
          ?.map((e) => Substitute.fromJson(e as Map<String, dynamic>))
          .toList(),
      coach: json['coach'] == null
          ? null
          : Coach.fromJson(json['coach'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LineUpModelToJson(_$_LineUpModel instance) =>
    <String, dynamic>{
      'team': instance.team,
      'formation': instance.formation,
      'startXi': instance.startXi,
      'substitutes': instance.substitutes,
      'coach': instance.coach,
    };
