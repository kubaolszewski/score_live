import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/league_model/fixtures/fixtures.dart';

part 'coverage.freezed.dart';
part 'coverage.g.dart';

@freezed
class Coverage with _$Coverage {
  const factory Coverage({
    Fixtures? fixtures,
    bool? standings,
    bool? players,
    bool? topScorers,
    bool? topAssists,
    bool? topCards,
    bool? injuries,
    bool? predictions,
    bool? odds,
  }) = _Coverage;

  factory Coverage.fromJson(Map<String, dynamic> json) => _$CoverageFromJson(json);
}
