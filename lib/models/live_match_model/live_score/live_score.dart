import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/live_match_model/live_goals/live_goals.dart';

part 'live_score.freezed.dart';
part 'live_score.g.dart';

@freezed
class Score with _$Score {
  const factory Score({
    Goals? halftime,
    Goals? fulltime,
    Goals? extratime,
    Goals? penalty,
  }) = _Score;

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}
