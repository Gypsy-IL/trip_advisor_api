// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'opening_hours.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpeningHours _$OpeningHoursFromJson(Map json) => OpeningHours(
      (json['periods'] as List<dynamic>).map((e) =>
          OpeningHourPeriod.fromJson(Map<String, dynamic>.from(e as Map))),
      (json['weekday_text'] as List<dynamic>).map((e) => e as String),
      (json['subcategory'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(Map<String, dynamic>.from(e as Map))),
    );

Map<String, dynamic> _$OpeningHoursToJson(OpeningHours instance) =>
    <String, dynamic>{
      'periods': instance.periods.map((e) => e.toJson()).toList(),
      'weekday_text': instance.weekdayText.toList(),
      'subcategory': instance.subcategory?.map((e) => e.toJson()).toList(),
    };
