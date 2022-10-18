import 'package:json_annotation/json_annotation.dart';

part 'day_and_time.g.dart';

@JsonSerializable()
class DayAndTime {
  final int day;
  final String time;

  DayAndTime(this.day, this.time);

  factory DayAndTime.fromJson(Map<String, dynamic> json) =>
      _$DayAndTimeFromJson(json);

  Map<String, dynamic> toJson() => _$DayAndTimeToJson(this);
}
