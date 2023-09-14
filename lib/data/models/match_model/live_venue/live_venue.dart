import 'package:freezed_annotation/freezed_annotation.dart';

part 'live_venue.freezed.dart';
part 'live_venue.g.dart';

@freezed
class Venue with _$Venue {
  const factory Venue({
    int? id,
    String? name,
    String? city,
  }) = _Venue;

  factory Venue.fromJson(Map<String, dynamic> json) => _$VenueFromJson(json);
}