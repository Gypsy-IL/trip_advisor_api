import 'package:trip_advisor_api/src/models/api_settings.dart';

/// parameters for the find search api
class LocationDetailsParameters {
  /// [locationId] - required
  /// A unique identifier for a location on Tripadvisor. The location ID can be obtained using the Location Search.
  final String locationId;

  /// [language] - optional
  /// The language in which to return results (e.g. "en" for English or "es" for Spanish) from the list of our Supported Languages.
  final Languages? language;

  /// [currency] - optional
  /// The currency code to use for request and response (should follow ISO 4217).
  final Currencies? currency;

  /// [locationId] - required -
  /// A unique identifier for a location on Tripadvisor. The location ID can be obtained using the Location Search.
  ///
  /// [language] - optional -
  /// The language in which to return results (e.g. "en" for English or "es" for Spanish) from the list of our Supported Languages.
  ///
  /// [currency] - optional -
  /// The currency code to use for request and response (should follow ISO 4217).
  LocationDetailsParameters(
      {required this.locationId, this.currency, this.language});
}
