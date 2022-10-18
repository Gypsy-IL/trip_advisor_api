// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_advisor_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TripAdvisorError _$TripAdvisorErrorFromJson(Map json) => TripAdvisorError(
      json['message'] as String,
      json['type'] as String,
      json['code'] as int,
    );

Map<String, dynamic> _$TripAdvisorErrorToJson(TripAdvisorError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'type': instance.type,
      'code': instance.code,
    };
