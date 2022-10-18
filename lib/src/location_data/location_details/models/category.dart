import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Category {
  final String name;
  @JsonKey(name: "localized_name")
  final String localizedName;

  Category(this.name, this.localizedName);
}
