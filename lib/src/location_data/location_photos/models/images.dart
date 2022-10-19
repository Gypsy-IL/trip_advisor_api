import 'package:json_annotation/json_annotation.dart';

import 'image.dart';

part 'images.g.dart';

@JsonSerializable()
class Images {
  final Image? thumbnail;
  final Image? small;
  final Image? medium;
  final Image? large;
  final Image? original;

  Images(this.thumbnail, this.small, this.medium, this.large, this.original);

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
