// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'owner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OwnerResponse _$OwnerResponseFromJson(Map json) => OwnerResponse(
      json['id'] as String,
      json['lang'] as String,
      json['published_date'] as String,
      json['author'] as String,
      json['text'] as String,
      json['title'] as String,
    );

Map<String, dynamic> _$OwnerResponseToJson(OwnerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lang': instance.lang,
      'published_date': instance.publishedDate,
      'author': instance.author,
      'text': instance.text,
      'title': instance.title,
    };
