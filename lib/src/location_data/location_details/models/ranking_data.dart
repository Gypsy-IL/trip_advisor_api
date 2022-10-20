import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/json_utils.dart';

part 'ranking_data.g.dart';

@JsonSerializable()
class RankingData {
  @JsonKey(
      name: "geo_location_id",
      fromJson: int.parse,
      toJson: JsonUtils.numToString)
  final int geoLocationId;
  @JsonKey(name: "ranking_string")
  final String rankingString;
  @JsonKey(name: "geo_location_name")
  final String geoLocationName;
  @JsonKey(
      name: "ranking_out_of",
      fromJson: int.parse,
      toJson: JsonUtils.numToString)
  final int rankingOutOf;
  @JsonKey(fromJson: int.parse, toJson: JsonUtils.numToString)
  final int ranking;

  RankingData(this.geoLocationId, this.rankingString, this.geoLocationName,
      this.rankingOutOf, this.ranking);

  factory RankingData.fromJson(Map<String, dynamic> json) =>
      _$RankingDataFromJson(json);

  Map<String, dynamic> toJson() => _$RankingDataToJson(this);
}
