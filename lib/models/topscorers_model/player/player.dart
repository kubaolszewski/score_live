import 'package:freezed_annotation/freezed_annotation.dart';

import '../birth/birth.dart';

part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required int id,
    required String name,
    required String firstname,
    required String lastname,
    required int age,
    required Birth birth,
    required String nationality,
    required String height,
    required String weight,
    required bool injured,
    required String photo,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}