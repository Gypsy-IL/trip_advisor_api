import 'package:json_annotation/json_annotation.dart';

part 'photos_user.g.dart';

@JsonSerializable()
class PhotosUser {
  final String? username;
  @JsonKey(name: "review_count")
  final int? reviewCount;
  @JsonKey(name: "reviewer_badge")
  final String? reviewerBadge;

  PhotosUser(this.username, this.reviewCount, this.reviewerBadge);

  factory PhotosUser.fromJson(Map<String, dynamic> json) =>
      _$PhotosUserFromJson(json);

  Map<String, dynamic> toJson() => _$PhotosUserToJson(this);
}
