import 'package:freezed_annotation/freezed_annotation.dart';

part 'fixtures.freezed.dart';
part 'fixtures.g.dart';

@freezed
class Fixtures with _$Fixtures {
  const factory Fixtures({
    bool? events,
    bool? lineups,
    bool? statisticsFixtures,
    bool? statisticsPlayers,
  }) = _Fixtures;

  factory Fixtures.fromJson(Map<String, dynamic> json) => _$FixturesFromJson(json);
}
