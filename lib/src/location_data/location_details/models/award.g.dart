// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'award.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Award _$AwardFromJson(Map json) => Award(
      json['around_type'] as String?,
      JsonUtils.parseInt(json['year'] as String?),
      json['images'] == null
          ? null
          : AwardImages.fromJson(
              Map<String, dynamic>.from(json['images'] as Map)),
      (json['categories'] as List<dynamic>?)?.map((e) => e as String),
      json['display_name'] as String?,
    );

Map<String, dynamic> _$AwardToJson(Award instance) => <String, dynamic>{
      'around_type': instance.aroundType,
      'year': JsonUtils.numToString(instance.year),
      'images': instance.images?.toJson(),
      'categories': instance.categories?.toList(),
      'display_name': instance.displayName,
    };
