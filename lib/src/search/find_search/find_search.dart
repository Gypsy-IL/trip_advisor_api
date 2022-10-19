import 'dart:convert';

import 'package:trip_advisor_api/src/constants/url_constants.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/network_utils.dart';
import 'package:trip_advisor_api/src/search/models/search_response.dart';

import 'find_search_parameters.dart';

export 'find_search_parameters.dart';

class FindSearch {
  final ApiSettings _settings;

  FindSearch(this._settings);

  Future<SearchResponse> get(FindSearchParameters params) async {
    var uri = Uri.https(UrlConstants.baseUrl,
        UrlConstants.findSearchUnencodedPath, _createQueryParameters(params));
    var response = await NetworkUtils.getRequest(uri);
    return SearchResponse.fromJson(jsonDecode(response.body));
  }

  Map<String, dynamic> _createQueryParameters(FindSearchParameters params) {
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
        queryParams, MapEntry("latLong", params.latLong?.toParameter()));
    NetworkUtils.addIfNotNull(queryParams, MapEntry("phone", params.phone));
    NetworkUtils.addIfNotNull(queryParams, MapEntry("radius", params.radius));
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("radiusUnit", params.radiusUnit?.name));
    NetworkUtils.addIfNotNull(
        queryParams, MapEntry("searchQuery", params.searchQuery));
    return queryParams;
  }
}
