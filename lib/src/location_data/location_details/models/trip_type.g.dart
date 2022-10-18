// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripType _$TripTypeFromJson(Map json) => TripType(
      json['name'] as String,
      json['localized_name'] as String,
      json['value'] as String,
    );

Map<String, dynamic> _$TripTypeToJson(TripType instance) => <String, dynamic>{
      'name': instance.name,
      'localized_name': instance.localizedName,
      'value': instance.value,
    };
