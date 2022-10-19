// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map json) => Images(
      json['thumbnail'] == null
          ? null
          : Image.fromJson(Map<String, dynamic>.from(json['thumbnail'] as Map)),
      json['small'] == null
          ? null
          : Image.fromJson(Map<String, dynamic>.from(json['small'] as Map)),
      json['medium'] == null
          ? null
          : Image.fromJson(Map<String, dynamic>.from(json['medium'] as Map)),
      json['large'] == null
          ? null
          : Image.fromJson(Map<String, dynamic>.from(json['large'] as Map)),
      json['original'] == null
          ? null
          : Image.fromJson(Map<String, dynamic>.from(json['original'] as Map)),
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'thumbnail': instance.thumbnail?.toJson(),
      'small': instance.small?.toJson(),
      'medium': instance.medium?.toJson(),
      'large': instance.large?.toJson(),
      'original': instance.original?.toJson(),
    };
