// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_details_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationDetailsResult _$LocationDetailsResultFromJson(Map json) =>
    LocationDetailsResult(
      json['location_id'] as String?,
      json['name'] as String?,
      json['description'] as String?,
      json['web_url'] as String?,
      json['address_obj'] == null
          ? null
          : AddressObject.fromJson(
              Map<String, dynamic>.from(json['address_obj'] as Map)),
      (json['ancestors'] as List<dynamic>?)
          ?.map((e) => Ancestor.fromJson(Map<String, dynamic>.from(e as Map))),
      json['latitude'] as num?,
      json['longitude'] as num?,
      json['timezone'] as String?,
      json['email'] as String?,
      json['phone'] as String?,
      json['website'] as String?,
      json['write_review'] as String?,
      json['ranking_data'] == null
          ? null
          : RankingData.fromJson(
              Map<String, dynamic>.from(json['ranking_data'] as Map)),
      json['rating'] as int?,
      json['rating_image_url'] as String?,
      json['num_reviews'] as int?,
      (json['review_rating_count'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String), e as int),
      ),
      (json['sub_ratings'] as Map?)?.map(
        (k, e) => MapEntry(int.parse(k as String),
            Subrating.fromJson(Map<String, dynamic>.from(e as Map))),
      ),
      json['photo_count'] as int?,
      json['see_all_photos'] as String?,
      json['price_level'] as String?,
      json['hours'] == null
          ? null
          : OpeningHours.fromJson(
              Map<String, dynamic>.from(json['hours'] as Map)),
      (json['amenities'] as List<dynamic>?)?.map((e) => e as String),
      (json['features'] as List<dynamic>?)?.map((e) => e as String),
      (json['cuisine'] as List<dynamic>?)
          ?.map((e) => Cuisine.fromJson(Map<String, dynamic>.from(e as Map))),
      json['parent_brand'] as String?,
      json['brand'] as String?,
      json['category'] == null
          ? null
          : Category.fromJson(
              Map<String, dynamic>.from(json['category'] as Map)),
      (json['subcategory'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(Map<String, dynamic>.from(e as Map))),
      (json['groups'] as List<dynamic>?)
          ?.map((e) => Group.fromJson(Map<String, dynamic>.from(e as Map))),
      (json['styles'] as List<dynamic>?)?.map((e) => e as String),
      (json['neighborhood_info'] as List<dynamic>?)?.map(
          (e) => Neighborhood.fromJson(Map<String, dynamic>.from(e as Map))),
      (json['trip_types'] as List<dynamic>?)
          ?.map((e) => TripType.fromJson(Map<String, dynamic>.from(e as Map))),
      (json['awards'] as List<dynamic>?)
          ?.map((e) => Award.fromJson(Map<String, dynamic>.from(e as Map))),
    );

Map<String, dynamic> _$LocationDetailsResultToJson(
        LocationDetailsResult instance) =>
    <String, dynamic>{
      'location_id': instance.locationId,
      'name': instance.name,
      'description': instance.description,
      'web_url': instance.webUrl,
      'address_obj': instance.addressObj?.toJson(),
      'ancestors': instance.ancestors?.map((e) => e.toJson()).toList(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'email': instance.email,
      'phone': instance.phone,
      'website': instance.website,
      'write_review': instance.writeReview,
      'ranking_data': instance.rankingData?.toJson(),
      'rating': instance.rating,
      'rating_image_url': instance.ratingImageUrl,
      'num_reviews': instance.numReviews,
      'review_rating_count':
          instance.reviewRatingCount?.map((k, e) => MapEntry(k.toString(), e)),
      'sub_ratings': instance.subRatings
          ?.map((k, e) => MapEntry(k.toString(), e.toJson())),
      'photo_count': instance.photoCount,
      'see_all_photos': instance.seeAllPhotos,
      'price_level': instance.priceLevel,
      'hours': instance.hours?.toJson(),
      'amenities': instance.amenities?.toList(),
      'features': instance.features?.toList(),
      'cuisine': instance.cuisine?.map((e) => e.toJson()).toList(),
      'parent_brand': instance.parentBrand,
      'brand': instance.brand,
      'category': instance.category?.toJson(),
      'subcategory': instance.subcategory?.map((e) => e.toJson()).toList(),
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
      'styles': instance.styles?.toList(),
      'neighborhood_info':
          instance.neighborhoodInfo?.map((e) => e.toJson()).toList(),
      'trip_types': instance.tripTypes?.map((e) => e.toJson()).toList(),
      'awards': instance.awards?.map((e) => e.toJson()).toList(),
    };
