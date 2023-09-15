import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_team.freezed.dart';
part 'event_team.g.dart';

@freezed
class Team with _$Team {
  const factory Team({
    int? id,
    String? name,
    String? logo,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
