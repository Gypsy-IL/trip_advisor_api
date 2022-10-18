import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class DayAndTime {
  final int day;
  final String time;

  DayAndTime(this.day, this.time);
}
