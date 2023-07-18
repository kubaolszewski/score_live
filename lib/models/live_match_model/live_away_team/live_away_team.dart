import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_away_team.freezed.dart';
part 'live_away_team.g.dart';

@freezed
class Away with _$Away {
  const factory Away({
    int? id,
    String? name,
    String? logo,
    bool? winner,
  }) = _Away;

  factory Away.fromJson(Map<String, dynamic> json) => _$AwayFromJson(json);
}
