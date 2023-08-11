import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/match_model/live_fixture/live_fixture.dart';
import 'package:score_live/models/match_model/live_goals/live_goals.dart';
import 'package:score_live/models/match_model/live_league/live_league.dart';
import 'package:score_live/models/match_model/live_score/live_score.dart';
import 'package:score_live/models/match_model/live_teams/live_teams.dart';

part 'match_model.freezed.dart';
part 'match_model.g.dart';

@freezed
class MatchModel with _$MatchModel {
  const factory MatchModel({
    Fixture? fixture,
    League? league,
    Teams? teams,
    Goals? goals,
    Score? score,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, dynamic> json) => _$MatchModelFromJson(json);
}
