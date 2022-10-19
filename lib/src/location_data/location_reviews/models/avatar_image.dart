import 'package:json_annotation/json_annotation.dart';

part 'avatar_image.g.dart';

@JsonSerializable()
class AvatarImage {
  final String url;

  AvatarImage(this.url);

  factory AvatarImage.fromJson(Map<String, dynamic> json) =>
      _$AvatarImageFromJson(json);

  Map<String, dynamic> toJson() => _$AvatarImageToJson(this);
}
