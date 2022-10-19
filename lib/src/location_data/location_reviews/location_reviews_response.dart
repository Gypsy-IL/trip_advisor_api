import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_reviews/location_review_result.dart';
import 'package:trip_advisor_api/trip_advisor_api.dart';

part 'location_reviews_response.g.dart';

@JsonSerializable()
class LocationReviewsResponse {
  final Iterable<LocationReviewResult>? data;
  final TripAdvisorError? error;

  LocationReviewsResponse(this.data, this.error);

  factory LocationReviewsResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationReviewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationReviewsResponseToJson(this);
}
