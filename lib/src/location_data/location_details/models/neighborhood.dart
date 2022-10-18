import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Neighborhood {
  @JsonKey(name: "location_id")
  final String locationId;
  final String name;

  Neighborhood(this.locationId, this.name);
}
