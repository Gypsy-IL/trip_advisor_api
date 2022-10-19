import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/search/models/categories.dart';
import 'package:trip_advisor_api/src/search/models/radius_units.dart';
import 'package:trip_advisor_api/trip_advisor_api.dart';
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
  final Languages? language;

  FindSearchParameters(
      {required this.searchQuery,
      this.category,
      this.phone,
      this.address,
      this.latLong,
      this.radius,
      this.radiusUnit,
      this.language});

  factory FindSearchParameters.fromJson(Map<String, dynamic> json) =>
      _$FindSearchParametersFromJson(json);

  Map<String, dynamic> toJson() => _$FindSearchParametersToJson(this);
}
