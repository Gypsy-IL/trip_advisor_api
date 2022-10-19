import 'package:json_annotation/json_annotation.dart';
import 'package:trip_advisor_api/trip_advisor_api.dart';

part 'extended_address_object.g.dart';

@JsonSerializable()
class ExtendedAddressObject extends AddressObject {
  final String? phone;
  final num? latitude;
  final num? longitude;

  factory ExtendedAddressObject.fromJson(Map<String, dynamic> json) =>
      _$ExtendedAddressObjectFromJson(json);

  ExtendedAddressObject(
      this.phone,
      this.latitude,
      this.longitude,
      super.street1,
      super.street2,
      super.city,
      super.state,
      super.country,
      super.postalcode,
      super.addressString);

  Map<String, dynamic> toJson() => _$ExtendedAddressObjectToJson(this);
}
