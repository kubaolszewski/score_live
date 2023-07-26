import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistic.freezed.dart';
part 'statistic.g.dart';

@freezed
class Statistic with _$Statistic {
    const factory Statistic({
        String? type,
        dynamic value,
    }) = _Statistic;

    factory Statistic.fromJson(Map<String, dynamic> json) => _$StatisticFromJson(json);
}