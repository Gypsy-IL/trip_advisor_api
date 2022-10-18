import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/models/images.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/models/photos_user.dart';
import 'package:trip_advisor_api/src/location_data/location_photos/models/source.dart';

@JsonSerializable()
class LocationPhotosResult {
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

  LocationPhotosResult(this.id, this.isBlessed, this.album, this.caption,
      this.publishedDate, this.images, this.source, this.user);
}
