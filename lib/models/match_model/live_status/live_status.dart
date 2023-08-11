import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_status.freezed.dart';
part 'live_status.g.dart';

@freezed
class Status with _$Status {
  const factory Status({
    String? long,
    String? short,
    int? elapsed,
  }) = _Status;

  factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}