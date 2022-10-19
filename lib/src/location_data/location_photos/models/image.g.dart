// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map json) => Image(
      json['width'] as String?,
      json['height'] as String?,
      json['url'] as String,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
    };
