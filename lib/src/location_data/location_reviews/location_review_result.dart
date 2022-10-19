import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/json_utils.dart';
import 'package:trip_advisor_api/src/location_data/location_reviews/models/ratings_user.dart';
import 'package:trip_advisor_api/src/location_data/models/subrating.dart';

part 'location_review_result.g.dart';

@JsonSerializable()
class LocationReviewResult {
  final String id;
  final String? lang;
  @JsonKey(name: "location_id")
  final String locationId;
  @JsonKey(name: "publishing_date")
  final String publishingDate;
  @JsonKey(fromJson: JsonUtils.parseDouble)
  final num? rating;
  @JsonKey(name: "helpful_votes", fromJson: JsonUtils.parseInt)
  final int? helpfulVotes;
  @JsonKey(name: "rating_image_url")
  final String ratingImageUrl;
  final String url;
  @JsonKey(name: "trip_type")
  final String tripType;
  final String text;
  final String title;
  @JsonKey(name: "owner_response")
  final String? ownerResponse;
  @JsonKey(name: "is_machine_translated")
  final bool isMachineTranslated;
  final RatingsUser user;
  final Map<int, Subrating>? subratings;

  LocationReviewResult(
      this.id,
      this.lang,
      this.locationId,
      this.publishingDate,
      this.rating,
      this.helpfulVotes,
      this.ratingImageUrl,
      this.url,
      this.tripType,
      this.text,
      this.title,
      this.ownerResponse,
      this.isMachineTranslated,
      this.user,
      this.subratings);

  factory LocationReviewResult.fromJson(Map<String, dynamic> json) =>
      _$LocationReviewResultFromJson(json);

  Map<String, dynamic> toJson() => _$LocationReviewResultToJson(this);
}
