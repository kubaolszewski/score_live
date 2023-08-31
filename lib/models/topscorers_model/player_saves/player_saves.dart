import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_saves.freezed.dart';
part 'player_saves.g.dart';

@freezed
class PlayerSaves with _$PlayerSaves {
  const factory PlayerSaves({
    required dynamic saves,
  }) = _PlayerSaves;

  factory PlayerSaves.fromJson(Map<String, dynamic> json) => _$PlayerSavesFromJson(json);
}
