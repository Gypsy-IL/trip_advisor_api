import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/category.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/opening_hours_period.dart';

@JsonSerializable()
class OpeningHours {
  final Iterable<OpeningHourPeriod> periods;
  @JsonKey(name: "weekday_text")
  final Iterable<String> weekdayText;
  final Iterable<Category> subcategory;

  OpeningHours(this.periods, this.weekdayText, this.subcategory);
}
