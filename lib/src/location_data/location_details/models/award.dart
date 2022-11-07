import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/json_utils.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/award_images.dart';

part 'award.g.dart';

@JsonSerializable()
class Award {
  @JsonKey(name: "around_type")
  final String? aroundType;
  @JsonKey(fromJson: JsonUtils.parseInt, toJson: JsonUtils.numToString)
  final int? year;
  final AwardImages? images;
  final Iterable<String>? categories;
  @JsonKey(name: "display_name")
  final String? displayName;

  Award(this.aroundType, this.year, this.images, this.categories,
      this.displayName);

  factory Award.fromJson(Map<String, dynamic> json) => _$AwardFromJson(json);

  Map<String, dynamic> toJson() => _$AwardToJson(this);
}
