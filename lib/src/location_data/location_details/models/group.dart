import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/category.dart';

part 'group.g.dart';

@JsonSerializable()
class Group {
  final String name;
  @JsonKey(name: "localized_name")
  final String localizedName;
  final Iterable<Category> categories;

  Group(this.name, this.localizedName, this.categories);

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  Map<String, dynamic> toJson() => _$GroupToJson(this);
}
