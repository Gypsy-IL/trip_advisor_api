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
      radiusUnit: $enumDecodeNullable(_$RadiusUnitsEnumMap, json['radiusUnit']),
      language: $enumDecodeNullable(_$LanguagesEnumMap, json['language']),
    );

Map<String, dynamic> _$NearbySearchParametersToJson(
        NearbySearchParameters instance) =>
    <String, dynamic>{
      'latLong': instance.latLong.toJson(),
      'category': _$CategoriesEnumMap[instance.category],
      'phone': instance.phone,
      'address': instance.address,
      'radius': instance.radius,
      'radiusUnit': _$RadiusUnitsEnumMap[instance.radiusUnit],
      'language': _$LanguagesEnumMap[instance.language],
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

const _$LanguagesEnumMap = {
  Languages.en: 'en',
};
