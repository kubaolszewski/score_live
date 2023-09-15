import 'package:freezed_annotation/freezed_annotation.dart';

part 'start_xi.freezed.dart';
part 'start_xi.g.dart';

@freezed
class StartXI with _$StartXI {
  const factory StartXI({
    StartXIPlayer? player,
  }) = _StartXi;

  factory StartXI.fromJson(Map<String, dynamic> json) => _$StartXIFromJson(json);
}

@freezed
class StartXIPlayer with _$StartXIPlayer {
  const factory StartXIPlayer({
    int? id,
    String? name,
    int? number,
    String? pos,
    String? grid,
  }) = _StartXiPlayer;

  factory StartXIPlayer.fromJson(Map<String, dynamic> json) => _$StartXIPlayerFromJson(json);
}
