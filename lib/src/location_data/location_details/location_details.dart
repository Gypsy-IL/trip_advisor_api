import 'dart:convert';

import 'package:trip_advisor_api/src/constants/url_constants.dart';
import 'package:trip_advisor_api/src/location_data/location_details/location_details_parameters.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/network_utils.dart';
import 'package:trip_advisor_api/src/search/models/search_response.dart';

class LocationDetails {
  final ApiSettings _settings;

  LocationDetails(this._settings);

  Future<SearchResponse> get(LocationDetailsParameters params) async {
    var uri = Uri.https(
        UrlConstants.baseUrl,
        UrlConstants.locationDetailsUnencodedPath(params.locationId),
        _createQueryParameters(params));
    var response = await NetworkUtils.getRequest(uri);
    return SearchResponse.fromJson(jsonDecode(response.body));
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
