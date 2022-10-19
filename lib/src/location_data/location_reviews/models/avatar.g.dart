// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Avatar _$AvatarFromJson(Map json) => Avatar(
      AvatarImage.fromJson(Map<String, dynamic>.from(json['small'] as Map)),
      AvatarImage.fromJson(Map<String, dynamic>.from(json['large'] as Map)),
    );

Map<String, dynamic> _$AvatarToJson(Avatar instance) => <String, dynamic>{
      'small': instance.small.toJson(),
      'large': instance.large.toJson(),
    };
