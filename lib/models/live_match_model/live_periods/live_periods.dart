import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_periods.freezed.dart';
part 'live_periods.g.dart';

@freezed
class Periods with _$Periods {
  const factory Periods({
    int? first,
    int? second,
  }) = _Periods;

  factory Periods.fromJson(Map<String, dynamic> json) => _$PeriodsFromJson(json);
}
