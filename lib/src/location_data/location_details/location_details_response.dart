import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_details/location_details_result.dart';
import 'package:trip_advisor_api/trip_advisor_api.dart';

part 'location_details_response.g.dart';

@JsonSerializable()
class LocationDetailsResponse {
  final Iterable<LocationDetailsResult>? data;
  final TripAdvisorError? error;

  LocationDetailsResponse(this.data, this.error);

  factory LocationDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationDetailsResponseToJson(this);
}
