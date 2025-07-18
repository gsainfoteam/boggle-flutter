// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      type: json['type'] as String,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      author: UserModel.fromJson(json['author'] as Map<String, dynamic>),
      participants: (json['participants'] as List<dynamic>?)
          ?.map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      maxParticipants: (json['maxParticipants'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
      'tags': instance.tags,
      'author': instance.author,
      'participants': instance.participants,
      'maxParticipants': instance.maxParticipants,
      'createdAt': instance.createdAt.toIso8601String(),
      'deadline': instance.deadline.toIso8601String(),
    };
