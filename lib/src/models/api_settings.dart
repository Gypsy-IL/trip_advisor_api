import 'package:json_annotation/json_annotation.dart';

part 'api_settings.g.dart';

enum Languages { en }

enum Currencies { USD }

@JsonSerializable()
class ApiSettings {
  final String apiKey;
  final Languages? language;

  ApiSettings({required this.apiKey, this.language});

  factory ApiSettings.fromJson(Map<String, dynamic> json) =>
      _$ApiSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$ApiSettingsToJson(this);
}
