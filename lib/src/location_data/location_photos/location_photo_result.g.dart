// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_photo_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationPhotosResult _$LocationPhotosResultFromJson(Map json) =>
    LocationPhotosResult(
      json['id'] as String,
      json['is_blessed'] as bool,
      json['album'] as String?,
      json['caption'] as String?,
      json['published_date'] as String,
      Images.fromJson(Map<String, dynamic>.from(json['images'] as Map)),
      Source.fromJson(Map<String, dynamic>.from(json['source'] as Map)),
      PhotosUser.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
    );

Map<String, dynamic> _$LocationPhotosResultToJson(
        LocationPhotosResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_blessed': instance.isBlessed,
      'album': instance.album,
      'caption': instance.caption,
      'published_date': instance.publishedDate,
      'images': instance.images.toJson(),
      'source': instance.source.toJson(),
      'user': instance.user.toJson(),
    };
