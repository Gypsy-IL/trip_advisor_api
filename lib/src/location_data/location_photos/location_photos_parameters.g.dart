// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_photos_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationPhotosParameters _$LocationPhotosParametersFromJson(Map json) =>
    LocationPhotosParameters(
      locationId: json['locationId'] as String,
      language: $enumDecodeNullable(_$LanguagesEnumMap, json['language']),
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
