import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/lat_long.dart';
import 'package:trip_advisor_api/src/search/models/categories.dart';
import 'package:trip_advisor_api/src/search/models/radius_units.dart';
part 'find_search_parameters.g.dart';

@JsonSerializable()
class FindSearchParameters {
  final String searchQuery;
  final Categories? category;
  final String? phone;
  final String? address;
  final LatLong? latLong;
  final String? radius;
  final RadiusUnits? radiusUnit;

  FindSearchParameters(
      {required this.searchQuery,
      this.category,
      this.phone,
      this.address,
      this.latLong,
      this.radius,
      this.radiusUnit});
}
