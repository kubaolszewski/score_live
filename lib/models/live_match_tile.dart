import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_match_tile.freezed.dart';
part 'live_match_tile.g.dart';

@freezed
class LiveMatchTile with _$LiveMatchTile {
    const factory LiveMatchTile({
        required String liveMatchTileGet,
        required Parameters parameters,
        required List<dynamic> errors,
        required int results,
        required Paging paging,
        required List<Response> response,
    }) = _LiveMatchTile;

    factory LiveMatchTile.fromJson(Map<String, dynamic> json) => _$LiveMatchTileFromJson(json);
}

@freezed
class Paging with _$Paging {
    const factory Paging({
        required int current,
        required int total,
    }) = _Paging;

    factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}

@freezed
class Parameters with _$Parameters {
    const factory Parameters({
        required String live,
    }) = _Parameters;

    factory Parameters.fromJson(Map<String, dynamic> json) => _$ParametersFromJson(json);
}

@freezed
class Response with _$Response {
    const factory Response({
        required Fixture fixture,
        required League league,
        required Goals teams,
        required Goals goals,
        required Score score,
    }) = _Response;

    factory Response.fromJson(Map<String, dynamic> json) => _$ResponseFromJson(json);
}

@freezed
class Fixture with _$Fixture {
    const factory Fixture({
        required int id,
        required dynamic referee,
        required String timezone,
        required DateTime date,
        required int timestamp,
        required Periods periods,
        required Venue venue,
        required Status status,
    }) = _Fixture;

    factory Fixture.fromJson(Map<String, dynamic> json) => _$FixtureFromJson(json);
}

@freezed
class Periods with _$Periods {
    const factory Periods({
        required int first,
        required dynamic second,
    }) = _Periods;

    factory Periods.fromJson(Map<String, dynamic> json) => _$PeriodsFromJson(json);
}

@freezed
class Status with _$Status {
    const factory Status({
        required String long,
        required String short,
        required int elapsed,
    }) = _Status;

    factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);
}

@freezed
class Venue with _$Venue {
    const factory Venue({
        required int id,
        required String name,
        required String city,
    }) = _Venue;

    factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}

@freezed
class Goals with _$Goals {
    const factory Goals({
        required dynamic home,
        required dynamic away,
    }) = _Goals;

    factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}

@freezed
class AwayClass with _$AwayClass {
    const factory AwayClass({
        required int id,
        required String name,
        required String logo,
        required bool winner,
    }) = _AwayClass;

    factory AwayClass.fromJson(Map<String, dynamic> json) => _$AwayClassFromJson(json);
}

@freezed
class League with _$League {
    const factory League({
        required int id,
        required String name,
        required String country,
        required String logo,
        required String flag,
        required int season,
        required String round,
    }) = _League;

    factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}

@freezed
class Score with _$Score {
    const factory Score({
        required Goals halftime,
        required Goals fulltime,
        required Goals extratime,
        required Goals penalty,
    }) = _Score;

    factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}
