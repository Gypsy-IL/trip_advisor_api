// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_search_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FindSearchParameters _$NearbySearchParametersFromJson(Map json) =>
    FindSearchParameters(
      searchQuery: json['searchQuery'] as String,
      category: $enumDecodeNullable(_$CategoriesEnumMap, json['category']),
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      latLong: json['latLong'] == null
          ? null
          : LatLong.fromJson(Map<String, dynamic>.from(json['latLong'] as Map)),
      radius: json['radius'] as String?,
      radiusUnit: $enumDecodeNullable(_$RadiusUnitsEnumMap, json['radiusUnit']),
    );

Map<String, dynamic> _$NearbySearchParametersToJson(
        FindSearchParameters instance) =>
    <String, dynamic>{
      'searchQuery': instance.searchQuery,
      'category': _$CategoriesEnumMap[instance.category],
      'phone': instance.phone,
      'address': instance.address,
      'latLong': instance.latLong?.toJson(),
      'radius': instance.radius,
      'radiusUnit': _$RadiusUnitsEnumMap[instance.radiusUnit],
    };

const _$CategoriesEnumMap = {
  Categories.hotels: 'hotels',
  Categories.attractions: 'attractions',
  Categories.restaurants: 'restaurants',
  Categories.geos: 'geos',
};

const _$RadiusUnitsEnumMap = {
  RadiusUnits.km: 'km',
  RadiusUnits.mi: 'mi',
  RadiusUnits.m: 'm',
};
