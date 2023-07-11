import 'package:freezed_annotation/freezed_annotation.dart';

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

@freezed
class Team with _$Team {
    const factory Team({
        int? id,
        String? name,
        String? code,
        String? country,
        int? founded,
        bool? national,
        String? logo,
    }) = _Team;

    factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}

@freezed
class Venue with _$Venue {
    const factory Venue({
        int? id,
        String? name,
        String? address,
        String? city,
        int? capacity,
        String? surface,
        String? image,
    }) = _Venue;

    factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}
