// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_photos_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationPhotosResponse _$LocationPhotosResponseFromJson(Map json) =>
    LocationPhotosResponse(
      (json['data'] as List<dynamic>?)?.map((e) =>
          LocationPhotoResult.fromJson(Map<String, dynamic>.from(e as Map))),
      json['error'] == null
          ? null
          : TripAdvisorError.fromJson(
              Map<String, dynamic>.from(json['error'] as Map)),
    );

Map<String, dynamic> _$LocationPhotosResponseToJson(
        LocationPhotosResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
    };
