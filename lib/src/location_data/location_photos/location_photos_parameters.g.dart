// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_photos_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationPhotosParameters _$LocationPhotosParametersFromJson(Map json) =>
    LocationPhotosParameters(
      json['locationId'] as String,
      $enumDecodeNullable(_$LanguagesEnumMap, json['language']),
    );

Map<String, dynamic> _$LocationPhotosParametersToJson(
        LocationPhotosParameters instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'language': _$LanguagesEnumMap[instance.language],
    };

const _$LanguagesEnumMap = {
  Languages.en: 'en',
};
