// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreatePostModelImpl _$$CreatePostModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreatePostModelImpl(
      title: json['title'] as String,
      content: json['content'] as String,
      type: json['type'] as String,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      maxParticipants: (json['maxParticipants'] as num).toInt(),
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$CreatePostModelImplToJson(
        _$CreatePostModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
      'tags': instance.tags,
      'maxParticipants': instance.maxParticipants,
      'deadline': instance.deadline.toIso8601String(),
    };
