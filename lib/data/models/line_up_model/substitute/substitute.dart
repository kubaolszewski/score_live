import 'package:freezed_annotation/freezed_annotation.dart';

part 'substitute.freezed.dart';
part 'substitute.g.dart';

@freezed
class Substitute with _$Substitute {
  const factory Substitute({
    SubstitutePlayer? player,
  }) = _Substitute;

  factory Substitute.fromJson(Map<String, dynamic> json) => _$SubstituteFromJson(json);
}

@freezed
class SubstitutePlayer with _$SubstitutePlayer {
  const factory SubstitutePlayer({
    int? id,
    String? name,
    int? number,
    String? pos,
    dynamic grid,
  }) = _SubstitutePlayer;

  factory SubstitutePlayer.fromJson(Map<String, dynamic> json) => _$SubstitutePlayerFromJson(json);
}