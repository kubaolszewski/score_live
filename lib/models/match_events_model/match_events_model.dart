import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_events_model.freezed.dart';
part 'match_events_model.g.dart';

@freezed
class MatchEventsModel with _$MatchEventsModel {
    const factory MatchEventsModel({
        Time? time,
        Team? team,
        Player? player,
        Assist? assist,
        String? type,
        String? detail,
        String? comments,
    }) = _MatchEventsModel;

    factory MatchEventsModel.fromJson(Map<String, dynamic> json) => _$MatchEventsModelFromJson(json);
}

@freezed
class Assist with _$Assist {
    const factory Assist({
        int? id,
        String? name,
    }) = _Assist;

    factory Assist.fromJson(Map<String, dynamic> json) => _$AssistFromJson(json);
}

@freezed
class Player with _$Player {
    const factory Player({
        int? id,
        String? name,
    }) = _Player;

    factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class Team with _$Team {
    const factory Team({
        int? id,
        String? name,
        String? logo,
    }) = _Team;

    factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class Time with _$Time {
    const factory Time({
        int? elapsed,
        int? extra,
    }) = _Time;

    factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}
