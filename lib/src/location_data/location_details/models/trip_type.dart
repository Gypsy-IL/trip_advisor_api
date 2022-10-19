import 'package:json_annotation/json_annotation.dart';

part 'trip_type.g.dart';

@JsonSerializable()
class TripType {
  final String name;
  @JsonKey(name: "localized_name")
  final String localizedName;
  final String value;

  TripType(this.name, this.localizedName, this.value);

  factory TripType.fromJson(Map<String, dynamic> json) =>
      _$TripTypeFromJson(json);

  Map<String, dynamic> toJson() => _$TripTypeToJson(this);
}
