import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/models/address_object.dart';

part 'nearby_search_result.g.dart';

@JsonSerializable()
class NearbySearchResult {
  @JsonKey(name: "location_id")
  final int locationId;
  final String name;
  final String distance;
  final String rating;
  final String bearing;
  @JsonKey(name: "address_obj")
  final AddressObject addressObject;

  NearbySearchResult(this.locationId, this.name, this.distance, this.rating,
      this.bearing, this.addressObject);

  factory NearbySearchResult.fromJson(Map<String, dynamic> json) =>
      _$NearbySearchResultFromJson(json);

  Map<String, dynamic> toJson() => _$NearbySearchResultToJson(this);
}
