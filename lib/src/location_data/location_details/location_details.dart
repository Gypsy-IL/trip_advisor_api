import 'dart:convert';

import 'package:trip_advisor_api/src/constants/url_constants.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/network_utils.dart';

import 'location_details.dart';

export 'location_details_parameters.dart';
export 'location_details_response.dart';
export 'location_details_result.dart';

/// Class that communicates with the location details api
class LocationDetails {
  final ApiSettings _settings;

  LocationDetails(this._settings);

  /// Get a [LocationDetailsResponse] which from the passed [LocationDetailsParameters]
  /// A Location Details request returns comprehensive information about a location (hotel, restaurant, or an attraction) such as name, address, rating, and URLs for the listing on Tripadvisor.
  Future<LocationDetailsResponse> get(LocationDetailsParameters params) async {
    var uri = Uri.https(
        UrlConstants.baseUrl,
        UrlConstants.locationDetailsUnencodedPath(params.locationId),
        _createQueryParameters(params));
    var response = await NetworkUtils.getRequest(uri);
    return LocationDetailsResponse.fromJson(jsonDecode(response.body));
  }

  Map<String, dynamic> _createQueryParameters(
      LocationDetailsParameters params) {
    Map<String, dynamic> queryParams = {
      "key": _settings.apiKey,
    };
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("language", _settings.language?.name));
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("language", params.language?.name));
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("currency", params.currency));
    return queryParams;
  }
}
