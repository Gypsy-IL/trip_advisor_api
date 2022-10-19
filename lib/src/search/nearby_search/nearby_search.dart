import 'dart:convert';

import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/constants/url_constants.dart';
import 'package:trip_advisor_api/src/search/nearby_search/nearby_search_parameters.dart';
import 'package:trip_advisor_api/src/search/models/search_response.dart';
import 'package:trip_advisor_api/src/network_utils.dart';

export 'nearby_search_parameters.dart';

class NearbySearch {
  final ApiSettings _settings;
  NearbySearch(this._settings);

  Future<SearchResponse> get(NearbySearchParameters params) async {
    var uri = Uri.https(UrlConstants.baseUrl,
        UrlConstants.nearbySearchUnencodedPath, _createQueryParameters(params));
    var response = await NetworkUtils.getRequest(uri);
    return SearchResponse.fromJson(jsonDecode(response.body));
  }

  Map<String, dynamic> _createQueryParameters(NearbySearchParameters params) {
    Map<String, dynamic> queryParams = {
      "key": _settings.apiKey,
    };
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("language", _settings.language?.name));
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("language", params.language?.name));
    NetworkUtils.addIfNotNull(queryParams, MapEntry("address", params.address));
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("category", params.category?.name));
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("latLong", params.latLong.toParameter()));
    NetworkUtils.addIfNotNull(queryParams, MapEntry("phone", params.phone));
    NetworkUtils.addIfNotNull(queryParams, MapEntry("radius", params.radius));
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("radiusUnit", params.radiusUnit?.name));
    return queryParams;
  }
}
