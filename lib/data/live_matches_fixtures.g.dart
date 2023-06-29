// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_matches_fixtures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveMatchesFixtures _$$_LiveMatchesFixturesFromJson(
        Map<String, dynamic> json) =>
    _$_LiveMatchesFixtures(
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => LiveMatchResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LiveMatchesFixturesToJson(
        _$_LiveMatchesFixtures instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
