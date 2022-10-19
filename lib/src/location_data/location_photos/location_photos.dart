import 'dart:convert';

import 'package:trip_advisor_api/src/constants/url_constants.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/location_photos_parameters.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/location_photos_response.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/network_utils.dart';

class LocationPhotos {
  final ApiSettings _settings;

  LocationPhotos(this._settings);

  Future<LocationPhotosResponse> get(LocationPhotosParameters params) async {
    var uri = Uri.https(
        UrlConstants.baseUrl,
        UrlConstants.locationPhotosUnencodedPath(params.locationId),
        _createQueryParameters(params));
    var response = await NetworkUtils.getRequest(uri);
    return LocationPhotosResponse.fromJson(jsonDecode(response.body));
  }

  Map<String, dynamic> _createQueryParameters(LocationPhotosParameters params) {
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
