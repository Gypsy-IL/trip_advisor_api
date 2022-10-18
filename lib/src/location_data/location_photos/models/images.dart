import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';

@JsonSerializable()
class Images {
  final String width;
  final String height;
  final String url;

  Images(this.width, this.height, this.url);

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);

  Map<String, dynamic> toJson() => _$ImagesToJson(this);
}
