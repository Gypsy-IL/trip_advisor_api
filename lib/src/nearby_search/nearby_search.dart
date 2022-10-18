import 'dart:convert';

import 'package:http/http.dart';
import 'package:trip_advisor_api/src/api_settings.dart';
import 'package:trip_advisor_api/src/constants/url_constants.dart';
import 'package:trip_advisor_api/src/nearby_search/models/nearby_search_parameters.dart';
import 'package:trip_advisor_api/src/nearby_search/models/nearby_search_response.dart';
import 'package:trip_advisor_api/src/network_utils.dart';

class NearbySearch {
  final ApiSettings _settings;
  NearbySearch(this._settings);

  Future<NearbySearchResponse> get(NearbySearchParameters params) async {
    var uri = Uri.https(UrlConstants.baseUrl,
        UrlConstants.nearbySearchUnencodedPath, _createQueryParameters(params));
    var response = await NetworkUtils.getRequest(uri);
    return NearbySearchResponse.fromJson(jsonDecode(response.body));
  }

  Map<String, dynamic> _createQueryParameters(NearbySearchParameters params) {
    Map<String, dynamic> queryParams = {
      "key": _settings.apiKey,
      "language": _settings.language.name,
    };
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("category", params.category));
    return queryParams;
  }
}
