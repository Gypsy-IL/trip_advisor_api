/// Support for doing something awesome.
///
/// More dartdocs go here.
library trip_advisor_api;

import 'package:trip_advisor_api/src/location_data/location_details/location_details.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/location_photos.dart';
import 'package:trip_advisor_api/src/location_data/location_reviews/location_reviews.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';
import 'package:trip_advisor_api/src/search/find_search/find_search.dart';
import 'package:trip_advisor_api/src/search/nearby_search/nearby_search.dart';

export 'src/models/api_settings.dart';

export 'src/search/models/search_response.dart';
export 'src/search/models/search_place_result.dart';

export 'src/search/nearby_search/nearby_search.dart';
export 'src/search/nearby_search/nearby_search_parameters.dart';

export 'src/search/find_search/find_search.dart';
export 'src/search/find_search/find_search_parameters.dart';

export 'src/location_data/location_details/location_details.dart';
export 'src/location_data/location_details/location_details_parameters.dart';
export 'src/location_data/location_details/location_details_response.dart';
export 'src/location_data/location_details/location_details_result.dart';

export 'src/location_data/location_photos/location_photos.dart';
export 'src/location_data/location_photos/location_photos_parameters.dart';
export 'src/location_data/location_photos/location_photos_response.dart';
export 'src/location_data/location_photos/location_photo_result.dart';

export 'src/location_data/location_reviews/location_reviews.dart';
export 'src/location_data/location_reviews/location_reviews_parameters.dart';
export 'src/location_data/location_reviews/location_reviews_response.dart';
export 'src/location_data/location_reviews/location_review_result.dart';

export 'src/models/address_object.dart';
export 'src/models/lat_long.dart';
export 'src/models/trip_advisor_error.dart';

class TripAdvisorApi {
  final ApiSettings _settings;
  late NearbySearch nearbySearch;
  late FindSearch findSearch;
  late LocationDetails locationDetails;
  late LocationPhotos locationPhotos;
  late LocationReviews locationReviews;

  TripAdvisorApi(this._settings) {
    nearbySearch = NearbySearch(_settings);
    findSearch = FindSearch(_settings);
    locationDetails = LocationDetails(_settings);
    locationPhotos = LocationPhotos(_settings);
    locationReviews = LocationReviews(_settings);
  }
}
