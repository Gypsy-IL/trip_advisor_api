import 'package:json_annotation/json_annotation.dart';

part 'owner_response.g.dart';

@JsonSerializable()
class OwnerResponse {
  final String id;
  final String lang;
  @JsonKey(name: "published_date")
  final String publishedDate;
  final String author;
  final String text;
  final String title;

  OwnerResponse(this.id, this.lang, this.publishedDate, this.author, this.text,
      this.title);

  factory OwnerResponse.fromJson(Map<String, dynamic> json) =>
      _$OwnerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerResponseToJson(this);
}
