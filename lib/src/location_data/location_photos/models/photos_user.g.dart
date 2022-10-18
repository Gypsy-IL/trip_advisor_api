// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotosUser _$PhotosUserFromJson(Map json) => PhotosUser(
      json['username'] as String?,
      json['review_count'] as int?,
      json['reviewer_badge'] as String?,
    );

Map<String, dynamic> _$PhotosUserToJson(PhotosUser instance) =>
    <String, dynamic>{
      'username': instance.username,
      'review_count': instance.reviewCount,
      'reviewer_badge': instance.reviewerBadge,
    };
