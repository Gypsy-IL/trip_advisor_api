import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/models/lat_long.dart';
import 'package:trip_advisor_api/src/search/models/categories.dart';
import 'package:trip_advisor_api/src/search/models/radius_units.dart';
part 'nearby_search_parameters.g.dart';

@JsonSerializable()
class NearbySearchParameters {
  final LatLong latLong;
  final Categories? category;
  final String? phone;
  final String? address;
  final String? radius;
  final RadiusUnits? radiusUnit;
  final Languages? language;

  NearbySearchParameters(
      {required this.latLong,
      this.category,
      this.phone,
      this.address,
      this.radius,
      this.radiusUnit,
      this.language});

  factory NearbySearchParameters.fromJson(Map<String, dynamic> json) =>
      _$NearbySearchParametersFromJson(json);

  Map<String, dynamic> toJson() => _$NearbySearchParametersToJson(this);
}
