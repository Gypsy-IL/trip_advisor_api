import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';
import 'package:trip_advisor_api/nearby_search/models/nearby_search_result.dart';

@JsonSerializable()
class NearbySearchResponse {
  final Iterable<NearbySearchResult>? data;
  final Error? error;

  NearbySearchResponse({this.data, this.error});
}
