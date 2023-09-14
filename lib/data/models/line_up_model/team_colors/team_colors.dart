import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_colors.freezed.dart';
part 'team_colors.g.dart';

@freezed
class TeamColors with _$TeamColors {
  const factory TeamColors({
    ColorProperties? player,
    ColorProperties? goalkeeper,
  }) = _TeamColors;

  factory TeamColors.fromJson(Map<String, dynamic> json) => _$TeamColorsFromJson(json);
}

@freezed
class ColorProperties with _$ColorProperties {
  const factory ColorProperties({
    String? primary,
    String? number,
    String? border,
  }) = _ColorProperties;

  factory ColorProperties.fromJson(Map<String, dynamic> json) => _$ColorPropertiesFromJson(json);
}
