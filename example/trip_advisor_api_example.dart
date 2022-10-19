import 'package:trip_advisor_api/trip_advisor_api.dart';

void main() {
  ApiSettings settings = ApiSettings(apiKey: "YOUR_API_KEY_HERE");
  TripAdvisorApi tripAdvisorApi = TripAdvisorApi(settings);

  NearbySearchParameters nearbySearchParameters =
      NearbySearchParameters(latLong: LatLong(20, 20));
  tripAdvisorApi.nearbySearch.get(nearbySearchParameters);
  FindSearchParameters findSearchParameters =
      FindSearchParameters(searchQuery: "Eiffel Tower");
  tripAdvisorApi.findSearch.get(findSearchParameters);
  LocationDetailsParameters locationDetailsParameters =
      LocationDetailsParameters(locationId: "12345");
  tripAdvisorApi.locationDetails.get(locationDetailsParameters);
  LocationPhotosParameters locationPhotosParameters =
      LocationPhotosParameters(locationId: "12345");
  tripAdvisorApi.locationPhotos.get(locationPhotosParameters);
  LocationReviewsParameters locationReviewsParameters =
      LocationReviewsParameters(locationId: "12345");
  tripAdvisorApi.locationReviews.get(locationReviewsParameters);
}
