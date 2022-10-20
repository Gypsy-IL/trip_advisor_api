import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/languages.dart';

part 'location_reviews_parameters.g.dart';

/// parameters for the location reviews api
@JsonSerializable()
class LocationReviewsParameters {
  /// [locationId] - required
  /// A unique identifier for a location on Tripadvisor. The location ID can be obtained using the Location Search.
  final String locationId;

  /// [language] - optional
  /// The language in which to return results (e.g. "en" for English or "es" for Spanish) from the list of our Supported Languages.
  final Languages? language;

  /// [locationId] - required -
  /// A unique identifier for a location on Tripadvisor. The location ID can be obtained using the Location Search.
  ///
  /// [language] - optional -
  /// The language in which to return results (e.g. "en" for English or "es" for Spanish) from the list of our Supported Languages.
  LocationReviewsParameters({required this.locationId, this.language});

  factory LocationReviewsParameters.fromJson(Map<String, dynamic> json) =>
      _$LocationReviewsParametersFromJson(json);

  Map<String, dynamic> toJson() => _$LocationReviewsParametersToJson(this);
}
