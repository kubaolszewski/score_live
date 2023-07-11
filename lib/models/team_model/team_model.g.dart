// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TeamModel _$$_TeamModelFromJson(Map<String, dynamic> json) => _$_TeamModel(
      team: json['team'] == null
          ? null
          : Team.fromJson(json['team'] as Map<String, dynamic>),
      venue: json['venue'] == null
          ? null
          : Venue.fromJson(json['venue'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TeamModelToJson(_$_TeamModel instance) =>
    <String, dynamic>{
      'team': instance.team,
      'venue': instance.venue,
    };

_$_Team _$$_TeamFromJson(Map<String, dynamic> json) => _$_Team(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      country: json['country'] as String?,
      founded: json['founded'] as int?,
      national: json['national'] as bool?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$$_TeamToJson(_$_Team instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'country': instance.country,
      'founded': instance.founded,
      'national': instance.national,
      'logo': instance.logo,
    };

_$_Venue _$$_VenueFromJson(Map<String, dynamic> json) => _$_Venue(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      capacity: json['capacity'] as int?,
      surface: json['surface'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_VenueToJson(_$_Venue instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'capacity': instance.capacity,
      'surface': instance.surface,
      'image': instance.image,
    };
