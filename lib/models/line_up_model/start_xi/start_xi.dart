import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_xi.freezed.dart';
part 'start_xi.g.dart';

@freezed
class StartXi with _$StartXi {
  const factory StartXi({
    StartXiPlayer? player,
  }) = _StartXi;

  factory StartXi.fromJson(Map<String, dynamic> json) => _$StartXiFromJson(json);
}

@freezed
class StartXiPlayer with _$StartXiPlayer {
  const factory StartXiPlayer({
    int? id,
    String? name,
    int? number,
    String? pos,
    String? grid,
  }) = _StartXiPlayer;

  factory StartXiPlayer.fromJson(Map<String, dynamic> json) => _$StartXiPlayerFromJson(json);
}
