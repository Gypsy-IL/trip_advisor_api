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

export 'src/models/address_object.dart';
export 'src/models/api_settings.dart';
export 'src/models/lat_long.dart';
export 'src/models/trip_advisor_error.dart';

export 'src/search/nearby_search/nearby_search.dart';
export 'src/search/nearby_search/nearby_search_parameters.dart';

export 'src/search/find_search/find_search.dart';
export 'src/search/find_search/find_search_parameters.dart';

export 'src/search/models/categories.dart';
export 'src/search/models/radius_units.dart';
export 'src/search/models/extended_address_object.dart';
export 'src/search/models/search_place_result.dart';
export 'src/search/models/search_response.dart';

export 'src/location_data/location_details/location_details.dart';
export 'src/location_data/location_details/location_details_parameters.dart';
export 'src/location_data/location_details/location_details_response.dart';
export 'src/location_data/location_details/location_details_result.dart';

export 'src/location_data/location_details/models/ancestor.dart';
export 'src/location_data/location_details/models/award.dart';
export 'src/location_data/location_details/models/award_images.dart';
export 'src/location_data/location_details/models/category.dart';
export 'src/location_data/location_details/models/cuisine.dart';
export 'src/location_data/location_details/models/day_and_time.dart';
export 'src/location_data/location_details/models/group.dart';
export 'src/location_data/location_details/models/neighborhood.dart';
export 'src/location_data/location_details/models/opening_hours.dart';
export 'src/location_data/location_details/models/opening_hours_period.dart';
export 'src/location_data/location_details/models/ranking_data.dart';
export 'src/location_data/location_details/models/trip_type.dart';

export 'src/location_data/location_photos/location_photos.dart';
export 'src/location_data/location_photos/location_photos_parameters.dart';
export 'src/location_data/location_photos/location_photos_response.dart';
export 'src/location_data/location_photos/location_photo_result.dart';

export 'src/location_data/location_photos/models/image.dart';
export 'src/location_data/location_photos/models/images.dart';
export 'src/location_data/location_photos/models/photos_user.dart';
export 'src/location_data/location_photos/models/source.dart';

export 'src/location_data/location_reviews/location_reviews.dart';
export 'src/location_data/location_reviews/location_reviews_parameters.dart';
export 'src/location_data/location_reviews/location_reviews_response.dart';
export 'src/location_data/location_reviews/location_review_result.dart';

export 'src/location_data/location_reviews/models/avatar.dart';
export 'src/location_data/location_reviews/models/avatar_image.dart';
export 'src/location_data/location_reviews/models/owner_response.dart';
export 'src/location_data/location_reviews/models/ratings_user.dart';
export 'src/location_data/location_reviews/models/ratings_user_location.dart';

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
