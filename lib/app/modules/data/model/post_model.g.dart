// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostModel _$PostModelFromJson(Map<String, dynamic> json) => _PostModel(
      uuid: json['uuid'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      type: json['type'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      author: json['author'] as String,
      authorId: json['authorId'] as String,
      participants:
          UserModel.fromJson(json['participants'] as Map<String, dynamic>),
      maxPaticipants: (json['maxPaticipants'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      deadline: DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$PostModelToJson(_PostModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'content': instance.content,
      'type': instance.type,
      'tags': instance.tags,
      'author': instance.author,
      'authorId': instance.authorId,
      'participants': instance.participants,
      'maxPaticipants': instance.maxPaticipants,
      'createdAt': instance.createdAt.toIso8601String(),
      'deadline': instance.deadline.toIso8601String(),
    };
