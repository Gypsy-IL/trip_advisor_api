import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/address_object.dart';

part 'search_place.g.dart';

@JsonSerializable()
class SearchPlace {
  @JsonKey(name: "location_id")
  final String locationId;
  final String name;
  final String distance;
  final String? rating;
  final String bearing;
  @JsonKey(name: "address_obj")
  final AddressObject addressObject;

  SearchPlace(this.locationId, this.name, this.distance, this.rating,
      this.bearing, this.addressObject);

  factory SearchPlace.fromJson(Map<String, dynamic> json) =>
      _$SearchPlaceFromJson(json);

  Map<String, dynamic> toJson() => _$SearchPlaceToJson(this);
}
