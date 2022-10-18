import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';
import 'package:trip_advisor_api/src/models/trip_advisor_error.dart';

import 'nearby_search_result.dart';

part 'nearby_search_response.g.dart';

@JsonSerializable()
class NearbySearchResponse {
  final Iterable<NearbySearchResult>? data;
  final TripAdvisorError? error;

  NearbySearchResponse({this.data, this.error});

  factory NearbySearchResponse.fromJson(Map<String, dynamic> json) =>
      _$NearbySearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NearbySearchResponseToJson(this);
}
