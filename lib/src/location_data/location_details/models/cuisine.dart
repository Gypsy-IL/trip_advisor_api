import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Cuisine {
  final String name;
  @JsonKey(name: "localized_name")
  final String localizedName;

  Cuisine(this.name, this.localizedName);
}
