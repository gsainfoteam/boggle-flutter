// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostListModel _$PostListModelFromJson(Map<String, dynamic> json) =>
    _PostListModel(
      count: (json['count'] as num).toInt(),
      list: (json['list'] as List<dynamic>)
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostListModelToJson(_PostListModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'list': instance.list,
    };
