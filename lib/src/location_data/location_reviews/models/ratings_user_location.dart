import 'package:json_annotation/json_annotation.dart';

part 'ratings_user_location.g.dart';

@JsonSerializable()
class RatingsUserLocation {
  final String? name;
  final String? id;

  RatingsUserLocation(this.name, this.id);

  factory RatingsUserLocation.fromJson(Map<String, dynamic> json) =>
      _$RatingsUserLocationFromJson(json);

  Map<String, dynamic> toJson() => _$RatingsUserLocationToJson(this);
}
