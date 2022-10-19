
import 'package:json_annotation/json_annotation.dart';

part 'trip_advisor_error.g.dart';

@JsonSerializable()
class TripAdvisorError {
  final String message;
  final String type;
  @JsonKey(fromJson: int.parse)
  final int code;

  TripAdvisorError(this.message, this.type, this.code);

  factory TripAdvisorError.fromJson(Map<String, dynamic> json) =>
      _$TripAdvisorErrorFromJson(json);

  Map<String, dynamic> toJson() => _$TripAdvisorErrorToJson(this);
}
