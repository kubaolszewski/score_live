import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_match_model.freezed.dart';
part 'live_match_model.g.dart';

@freezed
class LiveMatchModel with _$LiveMatchModel {
    const factory LiveMatchModel({
        Fixture? fixture,
        League? league,
        Teams? teams,
        Goals? goals,
        Score? score,
    }) = _LiveMatchModel;

    factory LiveMatchModel.fromJson(Map<String, dynamic> json) => _$LiveMatchModelFromJson(json);
}

@freezed
class Fixture with _$Fixture {
    const factory Fixture({
        int? id,
        String? referee,
        String? timezone,
        String? date,
        int? timestamp,
        Periods? periods,
        Venue? venue,
        Status? status,
    }) = _Fixture;

    factory Fixture.fromJson(Map<String, dynamic> json) => _$FixtureFromJson(json);
}

@freezed
class Periods with _$Periods {
    const factory Periods({
        int? first,
        int? second,
    }) = _Periods;

    factory Periods.fromJson(Map<String, dynamic> json) => _$PeriodsFromJson(json);
}

@freezed
class Status with _$Status {
    const factory Status({
        String? long,
        String? short,
        int? elapsed,
    }) = _Status;

    factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class Venue with _$Venue {
    const factory Venue({
        int? id,
        String? name,
        String? city,
    }) = _Venue;

    factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}

@freezed
class Goals with _$Goals {
    const factory Goals({
        int? home,
        int? away,
    }) = _Goals;

    factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}

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

@freezed
class Score with _$Score {
    const factory Score({
        Goals? halftime,
        Goals? fulltime,
        Goals? extratime,
        Goals? penalty,
    }) = _Score;

    factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}

@freezed
class Teams with _$Teams {
    const factory Teams({
        Home? home,
        Away? away,
    }) = _Teams;

    factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);
}

@freezed
class Home with _$Home {
    const factory Home({
        int? id,
        String? name,
        String? logo,
        bool? winner,
    }) = _Home;

    factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}

@freezed
class Away with _$Away {
    const factory Away({
        int? id,
        String? name,
        String? logo,
        bool? winner,
    }) = _Away;

    factory Away.fromJson(Map<String, dynamic> json) => _$AwayFromJson(json);
}
