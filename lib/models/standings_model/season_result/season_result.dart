import 'package:freezed_annotation/freezed_annotation.dart';
import '../season_goals/season_goals.dart';

part 'season_result.freezed.dart';
part 'season_result.g.dart';

@freezed
class SeasonResult with _$SeasonResult {
  const factory SeasonResult({
    int? played,
    int? win,
    int? draw,
    int? lose,
    SeasonGoals? goals,
  }) = _SeasonResult;

  factory SeasonResult.fromJson(Map<String, dynamic> json) => _$SeasonResultFromJson(json);
}
