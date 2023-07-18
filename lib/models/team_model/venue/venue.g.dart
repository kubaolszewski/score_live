// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
