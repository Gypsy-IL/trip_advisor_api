import 'package:json_annotation/json_annotation.dart';

part 'lat_long.g.dart';

@JsonSerializable()
class LatLong {
  final num latitude;
  final num longitude;

  LatLong(this.latitude, this.longitude)
      : assert(latitude >= -90 &&
            latitude <= 90 &&
            longitude >= -180 &&
            longitude <= 180);
  String toParameter() {
    return "$latitude,$longitude";
  }

  factory LatLong.fromJson(Map<String, dynamic> json) =>
      _$LatLongFromJson(json);

  Map<String, dynamic> toJson() => _$LatLongToJson(this);
}
