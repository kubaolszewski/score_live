import 'package:freezed_annotation/freezed_annotation.dart';
import '../team_colors/team_colors.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  const factory Team({
    int? id,
    String? name,
    String? logo,
    TeamColors? colors,
  }) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
