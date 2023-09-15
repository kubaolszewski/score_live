import 'package:freezed_annotation/freezed_annotation.dart';
import '../season_result/season_result.dart';
import '../team/team.dart';

part 'standings.freezed.dart';
part 'standings.g.dart';

@freezed
class Standings with _$Standings {
  const factory Standings({
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
  }) = _Standings;

  factory Standings.fromJson(Map<String, dynamic> json) => _$StandingsFromJson(json);
}
