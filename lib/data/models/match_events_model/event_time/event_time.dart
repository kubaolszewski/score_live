import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_time.freezed.dart';
part 'event_time.g.dart';

@freezed
class Time with _$Time {
  const factory Time({
    int? elapsed,
    int? extra,
  }) = _Time;

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);
}
