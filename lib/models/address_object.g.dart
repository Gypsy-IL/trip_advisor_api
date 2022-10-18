// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressObject _$AddressObjectFromJson(Map json) => AddressObject(
      street1: json['street1'] as String?,
      street2: json['street2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      postalcode: json['postalcode'] as String?,
      addressString: json['address_string'] as String?,
      phone: json['phone'] as String?,
      latitude: json['latitude'] as num?,
      longitude: json['longitude'] as num?,
    );

Map<String, dynamic> _$AddressObjectToJson(AddressObject instance) =>
    <String, dynamic>{
      'street1': instance.street1,
      'street2': instance.street2,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postalcode': instance.postalcode,
      'address_string': instance.addressString,
      'phone': instance.phone,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
