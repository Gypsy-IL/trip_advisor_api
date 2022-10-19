import 'dart:convert';

import 'package:trip_advisor_api/src/constants/url_constants.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/location_photos_parameters.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/location_photos_response.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/network_utils.dart';

export 'location_photos_parameters.dart';
export 'location_photos_response.dart';
export 'location_photo_result.dart';

/// Class that communicates with the location photos api
class LocationPhotos {
  final ApiSettings _settings;

  LocationPhotos(this._settings);

  /// Get a [LocationPhotosResponse] which from the passed [LocationPhotosParameters]
  /// The Location Photos request returns up to 2 high-quality photos for a specific location. The photos are ordered by recency.
  ///
  /// Sizes (height x width) for each photo type are as follows:
  ///
  /// Thumbnail: Fixed 50x50px, cropped, resized, and optimized by Tripadvisor
  ///
  /// Small: Fixed 150x150px, cropped, resized, and optimized by Tripadvisor
  ///
  /// Medium: Max dimension 250px (can be height or width, depending on photo orientation), the other dimension is resized to maintain the aspect ratio
  ///
  /// Large: Max dimension 550px (same rules as Medium, resized to maintain aspect ratio)
  ///
  /// Original: This is the photo in its original resolution and aspect ratio as provided by the user who submitted it.
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
