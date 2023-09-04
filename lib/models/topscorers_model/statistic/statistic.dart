import 'package:freezed_annotation/freezed_annotation.dart';

import '../games/games.dart';
import '../player_assists/player_assists.dart';
import '../player_goals/player_goals.dart';
import '../topscorers_model.dart';

part 'statistic.freezed.dart';
part 'statistic.g.dart';

@freezed
class Statistic with _$Statistic {
  const factory Statistic({
    required PlayerTeam team,
    required PlayerLeague league,
    required Games games,
    required PlayerGoals goals,
    required PlayerAssists assists,
  }) = _Statistic;

  factory Statistic.fromJson(Map<String, dynamic> json) => _$StatisticFromJson(json);
}
