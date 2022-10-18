import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/ancestor.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/award.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/category.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/cuisine.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/group.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/neighborhood.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/opening_hours.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/ranking_data.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/review_rating_count.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/sub_rating.dart';
import 'package:trip_advisor_api/src/location_data/location_details/models/trip_type.dart';
import 'package:trip_advisor_api/trip_advisor_api.dart';

@JsonSerializable()
class LocationDetailsResult {
  @JsonKey(name: "location_id")
  final String locationId;
  final String name;
  final String? description;
  @JsonKey(name: "web_url")
  final String webUrl;
  @JsonKey(name: "address_obj")
  final AddressObject? addressObj;
  final Iterable<Ancestor>? ancestors;
  final num? latitude;
  final num? longitude;
  final String timezone;
  final String? email;
  final String? phone;
  final String? website;
  @JsonKey(name: "write_review")
  final String writeReview;
  @JsonKey(name: "ranking_data")
  final RankingData rankingData;
  final int rating;
  @JsonKey(name: "rating_image_url")
  final String ratingImageUrl;
  @JsonKey(name: "num_reviews")
  final int numReviews;
  @JsonKey(name: "review_rating_count")
  final ReviewRatingCount reviewRatingCount;
  @JsonKey(name: "sub_ratings")
  final Iterable<SubRating> subRatings;
  @JsonKey(name: "photo_count")
  final int photoCount;
  @JsonKey(name: "see_all_photos")
  final String seeAllPhotos;
  @JsonKey(name: "price_level")
  final String priceLevel;
  final OpeningHours? hours;
  final Iterable<String>? amenities;
  final Iterable<String>? features;
  final Iterable<Cuisine>? cuisine;
  @JsonKey(name: "parent_brand")
  final String? parentBrand;
  final String? brand;
  final Category category;
  final Iterable<Category> subcategory;
  final Iterable<Group> groups;
  final Iterable<String>? styles;
  @JsonKey(name: "neighborhood_info")
  final Iterable<Neighborhood>? neighborhoodInfo;
  @JsonKey(name: "trip_types")
  final Iterable<TripType>? tripTypes;
  final Iterable<Award>? awards;
  final TripAdvisorError? error;

  LocationDetailsResult(
      this.locationId,
      this.name,
      this.description,
      this.webUrl,
      this.addressObj,
      this.ancestors,
      this.latitude,
      this.longitude,
      this.timezone,
      this.email,
      this.phone,
      this.website,
      this.writeReview,
      this.rankingData,
      this.rating,
      this.ratingImageUrl,
      this.numReviews,
      this.reviewRatingCount,
      this.subRatings,
      this.photoCount,
      this.seeAllPhotos,
      this.priceLevel,
      this.hours,
      this.amenities,
      this.features,
      this.cuisine,
      this.parentBrand,
      this.brand,
      this.category,
      this.subcategory,
      this.groups,
      this.styles,
      this.neighborhoodInfo,
      this.tripTypes,
      this.awards,
      this.error);
}
