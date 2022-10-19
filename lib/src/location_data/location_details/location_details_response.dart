import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/json_utils.dart';
import 'package:trip_advisor_api/src/location_data/models/location_data_models.dart';
import 'package:trip_advisor_api/src/models/shared_models.dart';

import 'location_details.dart';
import 'models/location_details_models.dart';

part 'location_details_response.g.dart';

/// Response object for the location details request
@JsonSerializable()
class LocationDetailsResponse extends LocationDetailsResult {
  final TripAdvisorError? error;

  LocationDetailsResponse(
      super.locationId,
      super.name,
      super.description,
      super.webUrl,
      super.addressObj,
      super.ancestors,
      super.latitude,
      super.longitude,
      super.timezone,
      super.email,
      super.phone,
      super.website,
      super.writeReview,
      super.rankingData,
      super.rating,
      super.ratingImageUrl,
      super.numReviews,
      super.reviewRatingCount,
      super.subratings,
      super.photoCount,
      super.seeAllPhotos,
      super.priceLevel,
      super.hours,
      super.amenities,
      super.features,
      super.cuisine,
      super.parentBrand,
      super.brand,
      super.category,
      super.subcategory,
      super.groups,
      super.styles,
      super.neighborhoodInfo,
      super.tripTypes,
      super.awards,
      this.error);

  LocationDetailsResult get data {
    return this;
  }

  factory LocationDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailsResponseFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LocationDetailsResponseToJson(this);
}
