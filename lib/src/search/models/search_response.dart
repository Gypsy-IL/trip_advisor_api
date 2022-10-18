import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';
import 'package:trip_advisor_api/src/models/trip_advisor_error.dart';

import 'search_place.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  final Iterable<SearchPlace>? data;
  final TripAdvisorError? error;

  SearchResponse({this.data, this.error});

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
