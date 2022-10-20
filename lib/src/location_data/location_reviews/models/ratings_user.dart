import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/json_utils.dart';
import 'package:trip_advisor_api/src/location_data/location_reviews/models/avatar.dart';
import 'package:trip_advisor_api/src/location_data/location_reviews/models/ratings_user_location.dart';

part 'ratings_user.g.dart';

@JsonSerializable()
class RatingsUser {
  final String? username;
  @JsonKey(name: "user_location")
  final RatingsUserLocation? userLocation;
  @JsonKey(
      name: "review_count",
      fromJson: JsonUtils.parseInt,
      toJson: JsonUtils.numToString)
  final int? reviewCount;
  @JsonKey(name: "reviewer_badge")
  final String? reviewerBadge;
  final Avatar avatar;

  RatingsUser(this.username, this.userLocation, this.reviewCount,
      this.reviewerBadge, this.avatar);

  factory RatingsUser.fromJson(Map<String, dynamic> json) =>
      _$RatingsUserFromJson(json);

  Map<String, dynamic> toJson() => _$RatingsUserToJson(this);
}
