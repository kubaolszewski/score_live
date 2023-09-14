import 'package:freezed_annotation/freezed_annotation.dart';
import 'coach/coach.dart';
import 'start_xi/start_xi.dart';
import 'substitute/substitute.dart';
import 'team/team.dart';

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



