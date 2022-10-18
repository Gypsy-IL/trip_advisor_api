import 'package:json_annotation/json_annotation.dart';

part 'address_object.g.dart';

@JsonSerializable()
class AddressObject {
  final String? street1;
  final String? street2;
  final String? city;
  final String? state;
  final String? country;
  final String? postalcode;
  @JsonKey(name: "address_string")
  final String? addressString;
  final String? phone;
  final num? latitude;
  final num? longitude;

  AddressObject(
      {this.street1,
      this.street2,
      this.city,
      this.state,
      this.country,
      this.postalcode,
      this.addressString,
      this.phone,
      this.latitude,
      this.longitude});

  factory AddressObject.fromJson(Map<String, dynamic> json) =>
      _$AddressObjectFromJson(json);

  Map<String, dynamic> toJson() => _$AddressObjectToJson(this);
}
