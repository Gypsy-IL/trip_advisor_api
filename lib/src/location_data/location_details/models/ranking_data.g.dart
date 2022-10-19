// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RankingData _$RankingDataFromJson(Map json) => RankingData(
      int.parse(json['geo_location_id'] as String),
      json['ranking_string'] as String,
      json['geo_location_name'] as String,
      int.parse(json['ranking_out_of'] as String),
      int.parse(json['ranking'] as String),
    );

Map<String, dynamic> _$RankingDataToJson(RankingData instance) =>
    <String, dynamic>{
      'geo_location_id': instance.geoLocationId,
      'ranking_string': instance.rankingString,
      'geo_location_name': instance.geoLocationName,
      'ranking_out_of': instance.rankingOutOf,
      'ranking': instance.ranking,
    };
