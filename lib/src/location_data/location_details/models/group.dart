import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/category.dart';

@JsonSerializable()
class Group {
  final String name;
  @JsonKey(name: "localized_name")
  final String localizedName;
  final Iterable<Category> categories;

  Group(this.name, this.localizedName, this.categories);
}
