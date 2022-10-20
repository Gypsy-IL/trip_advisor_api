import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/src/models/languages.dart';

part 'api_settings.g.dart';

@JsonSerializable()
class ApiSettings {
  final String apiKey;
  final Languages? language;

  ApiSettings({required this.apiKey, this.language});

  factory ApiSettings.fromJson(Map<String, dynamic> json) =>
      _$ApiSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$ApiSettingsToJson(this);
}
