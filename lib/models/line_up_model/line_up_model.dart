import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:score_live/models/line_up_model/coach/coach.dart';
import 'package:score_live/models/line_up_model/start_xi/start_xi.dart';
import 'package:score_live/models/line_up_model/substitute/substitute.dart';
import 'package:score_live/models/line_up_model/team/team.dart';

part 'line_up_model.freezed.dart';
part 'line_up_model.g.dart';

@freezed
class LineUpModel with _$LineUpModel {
  const factory LineUpModel({
    Team? team,
    String? formation,
    List<StartXI>? startXI,
    List<Substitute>? substitutes,
    Coach? coach,
  }) = _LineUpModel;

  factory LineUpModel.fromJson(Map<String, dynamic> json) => _$LineUpModelFromJson(json);
}



