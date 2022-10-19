import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/trip_advisor_api.dart';

part 'location_photos_response.g.dart';

@JsonSerializable()
class LocationPhotosResponse {
  final Iterable<LocationPhotoResult>? data;
  final TripAdvisorError? error;

  LocationPhotosResponse(this.data, this.error);

  factory LocationPhotosResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationPhotosResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationPhotosResponseToJson(this);
}
