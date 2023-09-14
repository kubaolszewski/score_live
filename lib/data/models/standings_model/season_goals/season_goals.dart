import 'package:freezed_annotation/freezed_annotation.dart';

part 'season_goals.freezed.dart';
part 'season_goals.g.dart';

@freezed
class SeasonGoals with _$SeasonGoals {
  const factory SeasonGoals({
    int? goalsFor,
    int? goalsAgainst,
  }) = _SeasonGoals;

  factory SeasonGoals.fromJson(Map<String, dynamic> json) => _$SeasonGoalsFromJson(json);
}
