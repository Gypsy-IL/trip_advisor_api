import 'package:json_annotation/json_annotation.dart';

part 'neighborhood.g.dart';

@JsonSerializable()
class Neighborhood {
  @JsonKey(name: "location_id")
  final String locationId;
  final String name;

  Neighborhood(this.locationId, this.name);

  factory Neighborhood.fromJson(Map<String, dynamic> json) =>
      _$NeighborhoodFromJson(json);

  Map<String, dynamic> toJson() => _$NeighborhoodToJson(this);
}
