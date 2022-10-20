import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/json_utils.dart';
import 'package:trip_advisor_api/src/location_data/models/location_data_models.dart';
import 'package:trip_advisor_api/src/models/shared_models.dart';
import 'models/location_details_models.dart';

part 'location_details_result.g.dart';

/// Data object of the location details response
@JsonSerializable()
class LocationDetailsResult {
  @JsonKey(name: "location_id")
  final String? locationId;
  final String? name;
  final String? description;
  @JsonKey(name: "web_url")
  final String? webUrl;
  @JsonKey(name: "address_obj")
  final AddressObject? addressObj;
  final Iterable<Ancestor>? ancestors;
  @JsonKey(fromJson: JsonUtils.parseDouble, toJson: JsonUtils.numToString)
  final num? latitude;
  @JsonKey(fromJson: JsonUtils.parseDouble, toJson: JsonUtils.numToString)
  final num? longitude;
  final String? timezone;
  final String? email;
  final String? phone;
  final String? website;
  @JsonKey(name: "write_review")
  final String? writeReview;
  @JsonKey(name: "ranking_data")
  final RankingData? rankingData;
  @JsonKey(fromJson: JsonUtils.parseDouble, toJson: JsonUtils.numToString)
  final num? rating;
  @JsonKey(name: "rating_image_url")
  final String? ratingImageUrl;
  @JsonKey(
      name: "num_reviews",
      fromJson: JsonUtils.parseInt,
      toJson: JsonUtils.numToString)
  final int? numReviews;
  @JsonKey(name: "review_rating_count")
  final Map<int, String>? reviewRatingCount;
  final Map<int, Subrating>? subratings;
  @JsonKey(
      name: "photo_count",
      fromJson: JsonUtils.parseInt,
      toJson: JsonUtils.numToString)
  final int? photoCount;
  @JsonKey(name: "see_all_photos")
  final String? seeAllPhotos;
  @JsonKey(name: "price_level")
  final String? priceLevel;
  final OpeningHours? hours;
  final Iterable<String>? amenities;
  final Iterable<String>? features;
  final Iterable<Cuisine>? cuisine;
  @JsonKey(name: "parent_brand")
  final String? parentBrand;
  final String? brand;
  final Category? category;
  final Iterable<Category>? subcategory;
  final Iterable<Group>? groups;
  final Iterable<String>? styles;
  @JsonKey(name: "neighborhood_info")
  final Iterable<Neighborhood>? neighborhoodInfo;
  @JsonKey(name: "trip_types")
  final Iterable<TripType>? tripTypes;
  final Iterable<Award>? awards;

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
      this.subratings,
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
      this.awards);

  factory LocationDetailsResult.fromJson(Map<String, dynamic> json) =>
      _$LocationDetailsResultFromJson(json);

  Map<String, dynamic> toJson() => _$LocationDetailsResultToJson(this);
}
