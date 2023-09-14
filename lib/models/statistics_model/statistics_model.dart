import 'package:freezed_annotation/freezed_annotation.dart';
import 'statistic/statistic.dart';
import 'team/team.dart';

part 'statistics_model.freezed.dart';
part 'statistics_model.g.dart';

@freezed
class StatisticsModel with _$StatisticsModel {
    const factory StatisticsModel({
        Team? team,
        List<Statistic>? statistics,
    }) = _StatisticsModel;

    factory StatisticsModel.fromJson(Map<String, dynamic> json) => _$StatisticsModelFromJson(json);
}

