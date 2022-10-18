// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbySearchResult _$NearbySearchResultFromJson(Map json) => NearbySearchResult(
      json['location_id'] as int,
      json['name'] as String,
      json['distance'] as String,
      json['rating'] as String,
      json['bearing'] as String,
      AddressObject.fromJson(
          Map<String, dynamic>.from(json['address_obj'] as Map)),
    );

Map<String, dynamic> _$NearbySearchResultToJson(NearbySearchResult instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'name': instance.name,
      'distance': instance.distance,
      'rating': instance.rating,
      'bearing': instance.bearing,
      'address_obj': instance.addressObject.toJson(),
    };
