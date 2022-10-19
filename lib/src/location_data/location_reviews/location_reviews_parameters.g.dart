// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_reviews_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationReviewsParameters _$LocationReviewsParametersFromJson(Map json) =>
    LocationReviewsParameters(
      locationId: json['locationId'] as String,
      language: $enumDecodeNullable(_$LanguagesEnumMap, json['language']),
    );

Map<String, dynamic> _$LocationReviewsParametersToJson(
        LocationReviewsParameters instance) =>
    <String, dynamic>{
      'locationId': instance.locationId,
      'language': _$LanguagesEnumMap[instance.language],
    };

const _$LanguagesEnumMap = {
  Languages.en: 'en',
};
