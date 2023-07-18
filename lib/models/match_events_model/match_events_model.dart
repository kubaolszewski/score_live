import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/match_events_model/event_assist/event_assist.dart';
import 'package:score_live/models/match_events_model/event_player/event_player.dart';
import 'package:score_live/models/match_events_model/event_team/event_team.dart';
import 'package:score_live/models/match_events_model/event_time/event_time.dart';

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
