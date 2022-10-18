import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class TripType {
  final String name;
  @JsonKey(name: "localized_name")
  final String localizedName;
  final String value;

  TripType(this.name, this.localizedName, this.value);
}
