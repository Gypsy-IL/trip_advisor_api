import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class Image {
  final Image? thumbnail;
  final Image? small;
  final Image? medium;
  final Image? large;
  final Image? original;

  Image(this.thumbnail, this.small, this.medium, this.large, this.original);

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}
