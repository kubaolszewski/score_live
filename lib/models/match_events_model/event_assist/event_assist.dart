import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_assist.freezed.dart';
part 'event_assist.g.dart';

@freezed
class Assist with _$Assist {
  const factory Assist({
    int? id,
    String? name,
  }) = _Assist;

  factory Assist.fromJson(Map<String, dynamic> json) => _$AssistFromJson(json);
}
