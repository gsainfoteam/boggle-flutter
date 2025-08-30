// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostListEntityImpl _$$PostListEntityImplFromJson(Map<String, dynamic> json) =>
    _$PostListEntityImpl(
      total: (json['total'] as num).toInt(),
      posts: (json['posts'] as List<dynamic>)
          .map((e) => PostEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostListEntityImplToJson(
        _$PostListEntityImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'posts': instance.posts,
    };
