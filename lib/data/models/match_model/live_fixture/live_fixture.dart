import 'package:freezed_annotation/freezed_annotation.dart';
import '../live_periods/live_periods.dart';
import '../live_status/live_status.dart';
import '../live_venue/live_venue.dart';

part 'live_fixture.freezed.dart';
part 'live_fixture.g.dart';

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