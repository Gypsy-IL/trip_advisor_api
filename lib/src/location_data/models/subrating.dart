import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/json_utils.dart';

part 'subrating.g.dart';

@JsonSerializable()
class Subrating {
  final String name;
  @JsonKey(name: "localized_name")
  final String localizedName;
  @JsonKey(name: "rating_image_url")
  final String ratingImageUrl;
  @JsonKey(fromJson: JsonUtils.parseDouble, toJson: JsonUtils.numToString)
  final num? value;

  Subrating(this.name, this.localizedName, this.ratingImageUrl, this.value);

  factory Subrating.fromJson(Map<String, dynamic> json) =>
      _$SubratingFromJson(json);

  Map<String, dynamic> toJson() => _$SubratingToJson(this);
}
