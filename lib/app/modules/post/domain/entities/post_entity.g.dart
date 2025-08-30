// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostEntityImpl _$$PostEntityImplFromJson(Map<String, dynamic> json) =>
    _$PostEntityImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      type: json['type'] as String,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      author: UserEntity.fromJson(json['author'] as Map<String, dynamic>),
      maxParticipants: (json['maxParticipants'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      deadline: DateTime.parse(json['deadline'] as String),
      roommateDetails: json['roommateDetails'] == null
          ? null
          : RMEntity.fromJson(json['roommateDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostEntityImplToJson(_$PostEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
      'tags': instance.tags,
      'author': instance.author,
      'maxParticipants': instance.maxParticipants,
      'createdAt': instance.createdAt.toIso8601String(),
      'deadline': instance.deadline.toIso8601String(),
      'roommateDetails': instance.roommateDetails,
    };
