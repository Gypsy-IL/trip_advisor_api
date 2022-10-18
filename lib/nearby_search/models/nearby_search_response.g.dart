// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nearby_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbySearchResponse _$NearbySearchResponseFromJson(Map json) =>
    NearbySearchResponse(
      data: (json['data'] as List<dynamic>?)?.map((e) =>
          NearbySearchResult.fromJson(Map<String, dynamic>.from(e as Map))),
      error: json['error'] == null
          ? null
          : TripAdvisorError.fromJson(
              Map<String, dynamic>.from(json['error'] as Map)),
    );

Map<String, dynamic> _$NearbySearchResponseToJson(
        NearbySearchResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'error': instance.error?.toJson(),
    };
