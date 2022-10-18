// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpeningHourPeriod _$OpeningHourPeriodFromJson(Map json) => OpeningHourPeriod(
      DayAndTime.fromJson(Map<String, dynamic>.from(json['open'] as Map)),
      DayAndTime.fromJson(Map<String, dynamic>.from(json['close'] as Map)),
    );

Map<String, dynamic> _$OpeningHourPeriodToJson(OpeningHourPeriod instance) =>
    <String, dynamic>{
      'open': instance.open.toJson(),
      'close': instance.close.toJson(),
    };
