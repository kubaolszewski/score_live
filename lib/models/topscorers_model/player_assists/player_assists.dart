import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_assists.freezed.dart';
part 'player_assists.g.dart';

@freezed
class PlayerAssists with _$PlayerAssists {
  const factory PlayerAssists({
    required int? assists,
  }) = _PlayerAssists;

  factory PlayerAssists.fromJson(Map<String, dynamic> json) => _$PlayerAssistsFromJson(json);
}