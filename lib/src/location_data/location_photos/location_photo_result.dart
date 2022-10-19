import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/models/images.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/models/photos_user.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/models/source.dart';

part 'location_photo_result.g.dart';

/// Data object of the location photos response
@JsonSerializable()
class LocationPhotoResult {
  final String id;
  @JsonKey(name: "is_blessed")
  final bool isBlessed;
  final String? album;
  final String? caption;
  @JsonKey(name: "published_date")
  final String publishedDate;
  final Images images;
  final Source source;
  final PhotosUser user;

  LocationPhotoResult(this.id, this.isBlessed, this.album, this.caption,
      this.publishedDate, this.images, this.source, this.user);

  factory LocationPhotoResult.fromJson(Map<String, dynamic> json) =>
      _$LocationPhotoResultFromJson(json);

  Map<String, dynamic> toJson() => _$LocationPhotoResultToJson(this);
}
