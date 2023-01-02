// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemEntity _$$_ItemEntityFromJson(Map<String, dynamic> json) =>
    _$_ItemEntity(
      parts: (json['parts'] as List<dynamic>?)?.map((e) => e as int).toList(),
      kids: (json['kids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      by: json['by'] as String?,
      descendants: json['descendants'] as int?,
      id: json['id'] as int?,
      parent: json['parent'] as int?,
      poll: json['poll'] as int?,
      score: json['score'] as int?,
      text: json['text'] as String?,
      time: json['time'] as int?,
      title: json['title'] as String?,
      type: json['type'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$_ItemEntityToJson(_$_ItemEntity instance) =>
    <String, dynamic>{
      'parts': instance.parts,
      'kids': instance.kids,
      'by': instance.by,
      'descendants': instance.descendants,
      'id': instance.id,
      'parent': instance.parent,
      'poll': instance.poll,
      'score': instance.score,
      'text': instance.text,
      'time': instance.time,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
    };
