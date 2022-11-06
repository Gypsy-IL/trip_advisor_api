/// This library lets you communicate with trip advisor content api with flutter
library trip_advisor_api;

import 'src/location_data/location_details/location_details.dart';
import 'src/location_data/location_photos/location_photos.dart';
import 'src/location_data/location_reviews/location_reviews.dart';
import 'src/models/api_settings.dart';
import 'src/search/find_search/find_search.dart';
import 'src/search/nearby_search/nearby_search.dart';

export 'src/location_data/location_details/location_details.dart';
export 'src/location_data/location_details/models/location_details_models.dart';
export 'src/location_data/location_photos/location_photos.dart';
export 'src/location_data/location_photos/models/location_photos_models.dart';
export 'src/location_data/location_reviews/location_reviews.dart';
export 'src/location_data/location_reviews/models/location_reviews_models.dart';
export 'src/location_data/models/location_data_models.dart';
export 'src/models/shared_models.dart';
export 'src/search/find_search/find_search.dart';
export 'src/search/models/search_models.dart';
export 'src/search/nearby_search/nearby_search.dart';

/// The Trip Advisor API is a service that return info from trip advisor
///
/// You can use it to search nearby places, search by text and get location details, photos and reviews
class TripAdvisorApi {
  /// [_settings] settings file for common settings which will probably be the same for all searches
  /// Language can be overridden
  final ApiSettings _settings;

  /// [nearbySearch] object to communicate with the nearby search api
  late NearbySearch nearbySearch;

  /// [findSearch]  object to communicate with the find search api
  late FindSearch findSearch;

  /// [locationDetails]  object to communicate with the location details api
  late LocationDetails locationDetails;

  /// [locationPhotos]  object to communicate with the location photos api
  late LocationPhotos locationPhotos;

  /// [locationReviews]  object to communicate with the location reviews api
  late LocationReviews locationReviews;

  TripAdvisorApi(this._settings) {
    nearbySearch = NearbySearch(_settings);
    findSearch = FindSearch(_settings);
    locationDetails = LocationDetails(_settings);
    locationPhotos = LocationPhotos(_settings);
    locationReviews = LocationReviews(_settings);
  }
}
