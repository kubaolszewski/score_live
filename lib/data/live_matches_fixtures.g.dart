// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_matches_fixtures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveMatchesFixtures _$$_LiveMatchesFixturesFromJson(
        Map<String, dynamic> json) =>
    _$_LiveMatchesFixtures(
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => LiveMatchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LiveMatchesFixturesToJson(
        _$_LiveMatchesFixtures instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$_MatchEvents _$$_MatchEventsFromJson(Map<String, dynamic> json) =>
    _$_MatchEvents(
      response: (json['response'] as List<dynamic>?)
              ?.map((e) => MatchEventsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MatchEventsToJson(_$_MatchEvents instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
