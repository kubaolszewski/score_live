// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_matches_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveMatchesFixtures _$$_LiveMatchesFixturesFromJson(
        Map<String, dynamic> json) =>
    _$_LiveMatchesFixtures(
      (json['response'] as List<dynamic>)
          .map((e) => LiveMatchTileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LiveMatchesFixturesToJson(
        _$_LiveMatchesFixtures instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$_LiveMatchesResponse _$$_LiveMatchesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LiveMatchesResponse(
      LiveMatchesFixtures.fromJson(json['fixtures'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LiveMatchesResponseToJson(
        _$_LiveMatchesResponse instance) =>
    <String, dynamic>{
      'fixtures': instance.fixtures,
    };
