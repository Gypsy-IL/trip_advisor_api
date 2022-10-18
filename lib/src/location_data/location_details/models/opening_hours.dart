import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/category.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/opening_hours_period.dart';

part 'opening_hours.g.dart';

@JsonSerializable()
class OpeningHours {
  final Iterable<OpeningHourPeriod> periods;
  @JsonKey(name: "weekday_text")
  final Iterable<String> weekdayText;
  final Iterable<Category> subcategory;

  OpeningHours(this.periods, this.weekdayText, this.subcategory);

  factory OpeningHours.fromJson(Map<String, dynamic> json) =>
      _$OpeningHoursFromJson(json);

  Map<String, dynamic> toJson() => _$OpeningHoursToJson(this);
}
