import 'package:freezed_annotation/freezed_annotation.dart';
import '../coverage/coverage.dart';

part 'season.freezed.dart';
part 'season.g.dart';

@freezed
class Season with _$Season {
  const factory Season({
    int? year,
    DateTime? start,
    DateTime? end,
    bool? current,
    Coverage? coverage,
  }) = _Season;

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}
