import 'package:freezed_annotation/freezed_annotation.dart';

part 'birth.freezed.dart';
part 'birth.g.dart';

@freezed
class Birth with _$Birth {
  const factory Birth({
    required DateTime date,
    required String? place,
    required String country,
  }) = _Birth;

  factory Birth.fromJson(Map<String, dynamic> json) => _$BirthFromJson(json);
}