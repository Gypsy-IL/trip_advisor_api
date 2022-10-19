import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';

part 'location_photos_parameters.g.dart';

/// parameters for the location photos api
@JsonSerializable()
class LocationPhotosParameters {
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
  LocationPhotosParameters({required this.locationId, this.language});

  factory LocationPhotosParameters.fromJson(Map<String, dynamic> json) =>
      _$LocationPhotosParametersFromJson(json);

  Map<String, dynamic> toJson() => _$LocationPhotosParametersToJson(this);
}
