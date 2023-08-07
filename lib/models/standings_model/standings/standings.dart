import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/standings_model/season_result/season_result.dart';
import 'package:score_live/models/standings_model/team/team.dart';

part 'standings.freezed.dart';
part 'standings.g.dart';

@freezed
class Standing with _$Standing {
  const factory Standing({
    int? rank,
    Team? team,
    int? points,
    int? goalsDiff,
    String? group,
    String? form,
    String? status,
    String? description,
    SeasonResult? all,
    SeasonResult? home,
    SeasonResult? away,
    String? update,
  }) = _Standing;

  factory Standing.fromJson(Map<String, dynamic> json) => _$StandingFromJson(json);
}
