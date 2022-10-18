import 'package:json_annotation/json_annotation.dart';

part 'award_images.g.dart';

@JsonSerializable()
class AwardImages {
  final String tiny;
  final String small;
  final String large;

  AwardImages(this.tiny, this.small, this.large);

  factory AwardImages.fromJson(Map<String, dynamic> json) =>
      _$AwardImagesFromJson(json);

  Map<String, dynamic> toJson() => _$AwardImagesToJson(this);
}
