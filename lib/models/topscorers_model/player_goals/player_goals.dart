import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_goals.freezed.dart';
part 'player_goals.g.dart';

@freezed
class PlayerGoals with _$PlayerGoals {
  const factory PlayerGoals({
    required int total,
    required int conceded,
    required int assists,
  }) = _PlayerGoals;

  factory PlayerGoals.fromJson(Map<String, dynamic> json) => _$PlayerGoalsFromJson(json);
}
