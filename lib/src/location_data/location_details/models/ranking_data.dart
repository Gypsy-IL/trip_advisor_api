import 'package:json_annotation/json_annotation.dart';

part 'ranking_data.g.dart';

@JsonSerializable()
class RankingData {
  @JsonKey(name: "geo_location_id", fromJson: int.parse)
  final int geoLocationId;
  @JsonKey(name: "ranking_string")
  final String rankingString;
  @JsonKey(name: "geo_location_name")
  final String geoLocationName;
  @JsonKey(name: "ranking_out_of", fromJson: int.parse)
  final int rankingOutOf;
  @JsonKey(fromJson: int.parse)
  final int ranking;

  RankingData(this.geoLocationId, this.rankingString, this.geoLocationName,
      this.rankingOutOf, this.ranking);

  factory RankingData.fromJson(Map<String, dynamic> json) =>
      _$RankingDataFromJson(json);

  Map<String, dynamic> toJson() => _$RankingDataToJson(this);
}
