// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subrating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subrating _$SubratingFromJson(Map json) => Subrating(
      json['name'] as String,
      json['localized_name'] as String,
      json['rating_image_url'] as String,
      json['value'] as num,
    );

Map<String, dynamic> _$SubratingToJson(Subrating instance) => <String, dynamic>{
      'name': instance.name,
      'localized_name': instance.localizedName,
      'rating_image_url': instance.ratingImageUrl,
      'value': instance.value,
    };
