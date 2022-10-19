import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_reviews/models/avatar_image.dart';

part 'avatar.g.dart';

@JsonSerializable()
class Avatar {
  final AvatarImage small;
  final AvatarImage large;

  Avatar(this.small, this.large);

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarToJson(this);
}
