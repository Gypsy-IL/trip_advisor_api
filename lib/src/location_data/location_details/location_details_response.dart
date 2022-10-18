import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/json_utils.dart';
import 'package:trip_advisor_api/trip_advisor_api.dart';

import 'models/ancestor.dart';
import 'models/award.dart';
import 'models/category.dart';
import 'models/cuisine.dart';
import 'models/group.dart';
import 'models/neighborhood.dart';
import 'models/opening_hours.dart';
import 'models/ranking_data.dart';
import 'models/subrating.dart';
import 'models/trip_type.dart';

part 'location_details_response.g.dart';

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
      super.subRatings,
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
  Map<String, dynamic> toJson() => _$LocationDetailsResponseToJson(this);
}
