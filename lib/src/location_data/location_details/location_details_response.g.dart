// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationDetailsResponse _$LocationDetailsResponseFromJson(Map json) =>
    LocationDetailsResponse(
      (json['data'] as List<dynamic>?)?.map((e) =>
          LocationDetailsResult.fromJson(Map<String, dynamic>.from(e as Map))),
      json['error'] == null
          ? null
          : TripAdvisorError.fromJson(
              Map<String, dynamic>.from(json['error'] as Map)),
    );

Map<String, dynamic> _$LocationDetailsResponseToJson(
        LocationDetailsResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
    };
