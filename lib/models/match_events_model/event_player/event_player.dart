import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_player.freezed.dart';
part 'event_player.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    int? id,
    String? name,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
