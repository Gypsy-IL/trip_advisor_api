// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiSettings _$ApiSettingsFromJson(Map json) => ApiSettings(
      json['apiKey'] as String,
      $enumDecode(_$LanguagesEnumMap, json['language']),
    );

Map<String, dynamic> _$ApiSettingsToJson(ApiSettings instance) =>
    <String, dynamic>{
      'apiKey': instance.apiKey,
      'language': _$LanguagesEnumMap[instance.language]!,
    };

const _$LanguagesEnumMap = {
  Languages.en: 'en',
};
