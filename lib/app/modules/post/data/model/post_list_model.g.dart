// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostListModelImpl _$$PostListModelImplFromJson(Map<String, dynamic> json) =>
    _$PostListModelImpl(
      total: (json['total'] as num).toInt(),
      posts: (json['posts'] as List<dynamic>)
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PostListModelImplToJson(_$PostListModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'posts': instance.posts,
    };
