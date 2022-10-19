import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/trip_advisor_api.dart';

part 'location_reviews_response.g.dart';

/// Response object for the location reviews request
@JsonSerializable()
class LocationReviewsResponse {
  final Iterable<LocationReviewResult>? data;
  final TripAdvisorError? error;

  LocationReviewsResponse(this.data, this.error);

  factory LocationReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationReviewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationReviewsResponseToJson(this);
}
