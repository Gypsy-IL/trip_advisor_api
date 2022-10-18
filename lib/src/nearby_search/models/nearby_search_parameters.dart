import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/lat_long.dart';
part 'nearby_search_parameters.g.dart';

enum Categories { hotels, attractions, restaurants, geos }

enum RadiusUnit { km, mi, m }

@JsonSerializable()
class NearbySearchParameters {
  final LatLong latLong;
  final Categories? category;
  final String? phone;
  final String? address;
  final String? radius;

  NearbySearchParameters(
      {required this.latLong,
      this.category,
      this.phone,
      this.address,
      this.radius});
}
