// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_reviews_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationReviewsResponse _$LocationReviewsResponseFromJson(Map json) =>
    LocationReviewsResponse(
      (json['data'] as List<dynamic>?)?.map((e) =>
          LocationReviewResult.fromJson(Map<String, dynamic>.from(e as Map))),
      json['error'] == null
          ? null
          : TripAdvisorError.fromJson(
              Map<String, dynamic>.from(json['error'] as Map)),
    );

Map<String, dynamic> _$LocationReviewsResponseToJson(
        LocationReviewsResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
    };
