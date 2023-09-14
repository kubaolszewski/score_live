import 'package:freezed_annotation/freezed_annotation.dart';
import 'team/team.dart';
import 'venue/venue.dart';

part 'team_model.freezed.dart';
part 'team_model.g.dart';

@freezed
class TeamModel with _$TeamModel {
  const factory TeamModel({
    Team? team,
    Venue? venue,
  }) = _TeamModel;

  factory TeamModel.fromJson(Map<String, dynamic> json) => _$TeamModelFromJson(json);
}
