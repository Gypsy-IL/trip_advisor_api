import 'package:json_annotation/json_annotation.dart';

part 'cuisine.g.dart';

@JsonSerializable()
class Cuisine {
  final String name;
  @JsonKey(name: "localized_name")
  final String localizedName;

  Cuisine(this.name, this.localizedName);

  factory Cuisine.fromJson(Map<String, dynamic> json) =>
      _$CuisineFromJson(json);

  Map<String, dynamic> toJson() => _$CuisineToJson(this);
}
