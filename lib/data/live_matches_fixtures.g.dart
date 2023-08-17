// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_matches_fixtures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveMatchesFixtures _$$_LiveMatchesFixturesFromJson(
        Map<String, dynamic> json) =>
    _$_LiveMatchesFixtures(
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => MatchModel.fromJson(e as Map<String, dynamic>))
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

_$_MatchLineUps _$$_MatchLineUpsFromJson(Map<String, dynamic> json) =>
    _$_MatchLineUps(
      response: (json['response'] as List<dynamic>?)
              ?.map((e) => LineUpModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MatchLineUpsToJson(_$_MatchLineUps instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$_MatchStatistics _$$_MatchStatisticsFromJson(Map<String, dynamic> json) =>
    _$_MatchStatistics(
      response: (json['response'] as List<dynamic>?)
              ?.map((e) => StatisticsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MatchStatisticsToJson(_$_MatchStatistics instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$_Standings _$$_StandingsFromJson(Map<String, dynamic> json) => _$_Standings(
      response: (json['response'] as List<dynamic>?)
              ?.map((e) => StandingsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_StandingsToJson(_$_Standings instance) =>
    <String, dynamic>{
      'response': instance.response,
    };

_$_League _$$_LeagueFromJson(Map<String, dynamic> json) => _$_League(
      response: (json['response'] as List<dynamic>?)
              ?.map((e) => LeagueModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_LeagueToJson(_$_League instance) => <String, dynamic>{
      'response': instance.response,
    };

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      response: (json['response'] as List<dynamic>?)
              ?.map((e) => TeamModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'response': instance.response,
    };

_$_LeagueResultsDetails _$$_LeagueResultsDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_LeagueResultsDetails(
      response: (json['response'] as List<dynamic>?)
          ?.map((e) => MatchModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LeagueResultsDetailsToJson(
        _$_LeagueResultsDetails instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
