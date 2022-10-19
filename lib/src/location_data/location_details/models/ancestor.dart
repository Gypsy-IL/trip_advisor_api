import 'package:json_annotation/json_annotation.dart';

part 'ancestor.g.dart';

@JsonSerializable()
class Ancestor {
  final String? abbrv;
  final String level;
  final String name;
  @JsonKey(name: "location_id")
  final String locationId;

  Ancestor(this.abbrv, this.level, this.name, this.locationId);

  factory Ancestor.fromJson(Map<String, dynamic> json) =>
      _$AncestorFromJson(json);

  Map<String, dynamic> toJson() => _$AncestorToJson(this);
}
