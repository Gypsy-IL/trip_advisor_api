import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/json_utils.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/award_images.dart';

part 'award.g.dart';

@JsonSerializable()
class Award {
  @JsonKey(name: "award_type")
  final String? awardType;
  @JsonKey(fromJson: JsonUtils.parseInt, toJson: JsonUtils.numToString)
  final int? year;
  final AwardImages? images;
  final Iterable<String>? categories;
  @JsonKey(name: "display_name")
  final String? displayName;

  Award(this.awardType, this.year, this.images, this.categories,
      this.displayName);

  factory Award.fromJson(Map<String, dynamic> json) => _$AwardFromJson(json);

  Map<String, dynamic> toJson() => _$AwardToJson(this);
}
