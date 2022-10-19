// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_review_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationReviewResult _$LocationReviewResultFromJson(Map json) =>
    LocationReviewResult(
      json['id'] as String,
      json['lang'] as String?,
      json['location_id'] as String,
      json['publishing_date'] as String?,
      json['rating'] as num,
      JsonUtils.parseInt(json['helpful_votes'] as String?),
      json['rating_image_url'] as String,
      json['url'] as String,
      json['trip_type'] as String?,
      json['text'] as String,
      json['title'] as String,
      json['owner_response'] == null
          ? null
          : OwnerResponse.fromJson(
              Map<String, dynamic>.from(json['owner_response'] as Map)),
      json['is_machine_translated'] as bool?,
      RatingsUser.fromJson(Map<String, dynamic>.from(json['user'] as Map)),
      (json['subratings'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            Subrating.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
    );

Map<String, dynamic> _$LocationReviewResultToJson(
        LocationReviewResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lang': instance.lang,
      'location_id': instance.locationId,
      'publishing_date': instance.publishingDate,
      'rating': instance.rating,
      'helpful_votes': instance.helpfulVotes,
      'rating_image_url': instance.ratingImageUrl,
      'url': instance.url,
      'trip_type': instance.tripType,
      'text': instance.text,
      'title': instance.title,
      'owner_response': instance.ownerResponse?.toJson(),
      'is_machine_translated': instance.isMachineTranslated,
      'user': instance.user.toJson(),
      'subratings': instance.subratings
          ?.map((k, e) => MapEntry(k.toString(), e.toJson())),
    };
