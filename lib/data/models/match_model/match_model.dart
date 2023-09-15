import 'package:freezed_annotation/freezed_annotation.dart';
import 'live_fixture/live_fixture.dart';
import 'live_goals/live_goals.dart';
import 'live_league/live_league.dart';
import 'live_score/live_score.dart';
import 'live_teams/live_teams.dart';

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
