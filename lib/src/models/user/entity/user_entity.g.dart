// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserEntity _$$_UserEntityFromJson(Map<String, dynamic> json) =>
    _$_UserEntity(
      about: json['about'] as String?,
      created: json['created'] as int?,
      delay: json['delay'] as int?,
      id: json['id'] as String?,
      karma: json['karma'] as int?,
      submitted:
          (json['submitted'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_UserEntityToJson(_$_UserEntity instance) =>
    <String, dynamic>{
      'about': instance.about,
      'created': instance.created,
      'delay': instance.delay,
      'id': instance.id,
      'karma': instance.karma,
      'submitted': instance.submitted,
    };
