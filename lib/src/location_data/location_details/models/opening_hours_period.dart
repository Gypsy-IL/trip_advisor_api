import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/day_and_time.dart';

part 'opening_hours_period.g.dart';

@JsonSerializable()
class OpeningHourPeriod {
  final DayAndTime open;
  final DayAndTime close;

  OpeningHourPeriod(this.open, this.close);

  factory OpeningHourPeriod.fromJson(Map<String, dynamic> json) =>
      _$OpeningHourPeriodFromJson(json);

  Map<String, dynamic> toJson() => _$OpeningHourPeriodToJson(this);
}
