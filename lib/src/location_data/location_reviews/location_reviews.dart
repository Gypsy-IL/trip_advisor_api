import 'dart:convert';

import 'package:trip_advisor_api/src/constants/url_constants.dart';
import 'package:trip_advisor_api/src/location_data/location_reviews/location_reviews_response.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/network_utils.dart';

import 'location_reviews_parameters.dart';

class LocationReviews {
  final ApiSettings _settings;

  LocationReviews(this._settings);

  Future<LocationReviewsResponse> get(LocationReviewsParameters params) async {
    var uri = Uri.https(
        UrlConstants.baseUrl,
        UrlConstants.locationReviewsUnencodedPath(params.locationId),
        _createQueryParameters(params));
    var response = await NetworkUtils.getRequest(uri);
    return LocationReviewsResponse.fromJson(jsonDecode(response.body));
  }

  Map<String, dynamic> _createQueryParameters(
      LocationReviewsParameters params) {
    Map<String, dynamic> queryParams = {
      "key": _settings.apiKey,
    };
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("language", _settings.language?.name));
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("language", params.language?.name));
    return queryParams;
  }
}
