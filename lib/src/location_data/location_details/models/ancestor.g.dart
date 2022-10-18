// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ancestor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ancestor _$AncestorFromJson(Map json) => Ancestor(
      json['abbrv'] as String?,
      json['level'] as String,
      json['name'] as String,
      json['location_id'] as String,
    );

Map<String, dynamic> _$AncestorToJson(Ancestor instance) => <String, dynamic>{
      'abbrv': instance.abbrv,
      'level': instance.level,
      'name': instance.name,
      'location_id': instance.locationId,
    };
