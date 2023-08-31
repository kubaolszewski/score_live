import 'package:freezed_annotation/freezed_annotation.dart';

import '../topscorers_model.dart';

part 'statistic.freezed.dart';
part 'statistic.g.dart';

@freezed
class Statistic with _$Statistic {
  const factory Statistic({
    required Team team,
    required League league,
    required Games games,
    required Goals goals,
    required Assists assists,
    required Saves saves,
  }) = _Statistic;

  factory Statistic.fromJson(Map<String, dynamic> json) => _$StatisticFromJson(json);
}
