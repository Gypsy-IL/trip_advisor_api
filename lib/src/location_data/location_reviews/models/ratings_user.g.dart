// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ratings_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingsUser _$RatingsUserFromJson(Map json) => RatingsUser(
      json['username'] as String?,
      json['user_location'] == null
          ? null
          : RatingsUserLocation.fromJson(
              Map<String, dynamic>.from(json['user_location'] as Map)),
      JsonUtils.parseInt(json['review_count'] as String?),
      json['reviewer_badge'] as String?,
      Avatar.fromJson(Map<String, dynamic>.from(json['avatar'] as Map)),
    );

Map<String, dynamic> _$RatingsUserToJson(RatingsUser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'user_location': instance.userLocation?.toJson(),
      'review_count': instance.reviewCount,
      'reviewer_badge': instance.reviewerBadge,
      'avatar': instance.avatar.toJson(),
    };
