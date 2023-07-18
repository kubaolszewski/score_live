import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/live_match_model/live_fixture/live_fixture.dart';
import 'package:score_live/models/live_match_model/live_goals/live_goals.dart';
import 'package:score_live/models/live_match_model/live_league/live_league.dart';
import 'package:score_live/models/live_match_model/live_score/live_score.dart';
import 'package:score_live/models/live_match_model/live_teams/live_teams.dart';

part 'live_match_model.freezed.dart';
part 'live_match_model.g.dart';

@freezed
class LiveMatchModel with _$LiveMatchModel {
  const factory LiveMatchModel({
    Fixture? fixture,
    League? league,
    Teams? teams,
    Goals? goals,
    Score? score,
  }) = _LiveMatchModel;

  factory LiveMatchModel.fromJson(Map<String, dynamic> json) => _$LiveMatchModelFromJson(json);
}
