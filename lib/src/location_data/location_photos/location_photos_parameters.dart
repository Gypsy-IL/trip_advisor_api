import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';

part 'location_photos_parameters.g.dart';

@JsonSerializable()
class LocationPhotosParameters {
  final String locationId;
  final Languages language;

  LocationPhotosParameters(this.locationId, this.language);

  factory LocationPhotosParameters.fromJson(Map<String, dynamic> json) =>
      _$LocationPhotosParametersFromJson(json);

  Map<String, dynamic> toJson() => _$LocationPhotosParametersToJson(this);
}
