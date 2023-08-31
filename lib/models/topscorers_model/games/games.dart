import 'package:freezed_annotation/freezed_annotation.dart';

part 'games.freezed.dart';
part 'games.g.dart';

@freezed
class Games with _$Games {
  const factory Games({
    required int appearences,
    required int lineups,
    required int minutes,
    required dynamic number,
    required String position,
    required String rating,
    required bool captain,
  }) = _Games;

  factory Games.fromJson(Map<String, dynamic> json) => _$GamesFromJson(json);
}
