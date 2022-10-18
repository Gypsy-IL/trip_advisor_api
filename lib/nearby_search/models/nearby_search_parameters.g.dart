// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_search_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbySearchParameters _$NearbySearchParametersFromJson(Map json) =>
    NearbySearchParameters(
      latLong:
          LatLong.fromJson(Map<String, dynamic>.from(json['latLong'] as Map)),
      category: $enumDecodeNullable(_$CategoriesEnumMap, json['category']),
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      radius: json['radius'] as String?,
    );

Map<String, dynamic> _$NearbySearchParametersToJson(
        NearbySearchParameters instance) =>
    <String, dynamic>{
      'latLong': instance.latLong.toJson(),
      'category': _$CategoriesEnumMap[instance.category],
      'phone': instance.phone,
      'address': instance.address,
      'radius': instance.radius,
    };

const _$CategoriesEnumMap = {
  Categories.hotels: 'hotels',
  Categories.attractions: 'attractions',
  Categories.restaurants: 'restaurants',
  Categories.geos: 'geos',
};
