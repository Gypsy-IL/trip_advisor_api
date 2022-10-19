import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/models/lat_long.dart';
import 'package:trip_advisor_api/src/search/models/categories.dart';
import 'package:trip_advisor_api/src/search/models/radius_units.dart';
part 'nearby_search_parameters.g.dart';

/// parameters for the nearby search api;
@JsonSerializable()
class NearbySearchParameters {
  /// [latLong] - required
  /// Latitude/Longitude pair to scope down the search around a specific point - eg. "42.3455,-71.10767"
  final LatLong latLong;

  /// [category] - optional
  /// Filters result set based on property type. Valid options are "hotels", "attractions", "restaurants", and "geos"
  final Categories? category;

  /// [phone] - optional
  /// Phone number to filter the search results by (this can be in any format with spaces and dashes but without the "+" sign at the beginning)
  final String? phone;

  /// [address] - optional
  /// Address to filter the search results by
  final String? address;

  /// [radius] - optional
  /// Length of the radius from the provided latitude/longitude pair to filter results.
  final String? radius;

  /// [radiusUnit] - optional
  /// Unit for length of the radius. Valid options are "km", "mi", "m" (km=kilometers, mi=miles, m=meters)
  final RadiusUnits? radiusUnit;

  /// [language] - optional
  /// The language in which to return results (e.g. "en" for English or "es" for Spanish) from the list of our Supported Languages.
  final Languages? language;

  /// [latLong] - required -
  /// Latitude/Longitude pair to scope down the search around a specific point - eg. "42.3455,-71.10767"
  ///
  /// [category] - optional -
  /// Filters result set based on property type. Valid options are "hotels", "attractions", "restaurants", and "geos"
  ///
  /// [phone] - optional -
  /// Phone number to filter the search results by (this can be in any format with spaces and dashes but without the "+" sign at the beginning)
  ///
  /// [address] - optional -
  /// Address to filter the search results by
  ///
  /// [radius] - optional -
  /// Length of the radius from the provided latitude/longitude pair to filter results.
  ///
  /// [radiusUnit] - optional -
  /// Unit for length of the radius. Valid options are "km", "mi", "m" (km=kilometers, mi=miles, m=meters)
  ///
  /// [language] - optional -
  /// The language in which to return results (e.g. "en" for English or "es" for Spanish) from the list of our Supported Languages.
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
