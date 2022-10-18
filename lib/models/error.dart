import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class Error {
  final String message;
  final String type;
  final int code;

  Error(this.message, this.type, this.code);
}
