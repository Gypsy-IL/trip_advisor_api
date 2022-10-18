import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/award_images.dart';

@JsonSerializable()
class Award {
  @JsonKey(name: "around_type")
  final String aroundType;
  final int year;
  final AwardImages images;
  final Iterable<String> categories;
  @JsonKey(name: "display_name")
  final String displayName;

  Award(
      {required this.aroundType,
      required this.year,
      required this.images,
      required this.categories,
      required this.displayName});
}
