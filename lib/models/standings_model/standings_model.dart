import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/standings_model/standings/standings.dart';

part 'standings_model.freezed.dart';
part 'standings_model.g.dart';

@freezed
class StandingsModel with _$StandingsModel {
  const factory StandingsModel({
    int? id,
    String? name,
    String? country,
    String? logo,
    String? flag,
    int? season,
    List<List<Standing>>? standings,
  }) = _StandingsModel;

  factory StandingsModel.fromJson(Map<String, dynamic> json) => _$StandingsModelFromJson(json);
}
