import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_league.freezed.dart';
part 'live_league.g.dart';

@freezed
class League with _$League {
  const factory League({
    int? id,
    String? name,
    String? country,
    String? logo,
    String? flag,
    int? season,
    String? round,
  }) = _League;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}
