import 'package:freezed_annotation/freezed_annotation.dart';
import 'birth/birth.dart';

import 'player_statistic/player_statistic.dart';

part 'top_scorers_model.freezed.dart';
part 'top_scorers_model.g.dart';

@freezed
class TopScorersModel with _$TopScorersModel {
  const factory TopScorersModel({
    required Player player,
    required List<PlayerStatistic> statistics,
  }) = _TopScorersModel;

  factory TopScorersModel.fromJson(Map<String, dynamic> json) => _$TopScorersModelFromJson(json);
}

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
