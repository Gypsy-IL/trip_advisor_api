import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/api_settings.dart';

part 'location_reviews_parameters.g.dart';

@JsonSerializable()
class LocationReviewsParameters {
  final String locationId;
  final Languages? language;

  LocationReviewsParameters({required this.locationId, this.language});

  factory LocationReviewsParameters.fromJson(Map<String, dynamic> json) =>
      _$LocationReviewsParametersFromJson(json);

  Map<String, dynamic> toJson() => _$LocationReviewsParametersToJson(this);
}
