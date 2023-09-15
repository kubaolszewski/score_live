import 'package:freezed_annotation/freezed_annotation.dart';

import '../player_all_stats/player_all_stats.dart';

part 'player_statistic.freezed.dart';
part 'player_statistic.g.dart';

@freezed
class PlayerStatistic with _$PlayerStatistic {
  const factory PlayerStatistic({
    required Team team,
    required League league,
    required Games games,
    required Substitutes substitutes,
    required Shots shots,
    required Goals goals,
    required Passes passes,
    required Tackles tackles,
    required Duels duels,
    required Dribbles dribbles,
    required Fouls fouls,
    required Cards cards,
    required Penalty penalty,
  }) = _PlayerStatistic;

  factory PlayerStatistic.fromJson(Map<String, dynamic> json) => _$PlayerStatisticFromJson(json);
}
