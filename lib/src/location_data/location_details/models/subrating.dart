import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Subrating {
  final String name;
  @JsonKey(name: "localized_name")
  final String localizedName;
  @JsonKey(name: "rating_image_url")
  final String ratingImageUrl;
  final num value;

  Subrating(this.name, this.localizedName, this.ratingImageUrl, this.value);
}
