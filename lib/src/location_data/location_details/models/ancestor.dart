import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Ancestor {
  final String? abbrv;
  final String level;
  final String name;
  @JsonKey(name: "location_id")
  final String locationId;

  Ancestor(this.abbrv, this.level, this.name, this.locationId);
}
