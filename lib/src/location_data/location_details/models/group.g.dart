// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map json) => Group(
      json['name'] as String,
      json['localized_name'] as String,
      (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(Map<String, dynamic>.from(e as Map))),
    );

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'name': instance.name,
      'localized_name': instance.localizedName,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
    };
