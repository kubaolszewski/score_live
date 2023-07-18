import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/live_match_model/live_away_team/live_away_team.dart';
import 'package:score_live/models/live_match_model/live_home_team/live_home_team.dart';

part 'live_teams.freezed.dart';
part 'live_teams.g.dart';

@freezed
class Teams with _$Teams {
  const factory Teams({
    Home? home,
    Away? away,
  }) = _Teams;

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);
}
