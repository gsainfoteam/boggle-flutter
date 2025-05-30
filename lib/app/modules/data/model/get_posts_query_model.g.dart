// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPostsQueryModelImpl _$$GetPostsQueryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPostsQueryModelImpl(
      offset: (json['offset'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
      search: json['search'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      my: $enumDecodeNullable(_$PostMyEnumMap, json['my']),
      category: $enumDecodeNullable(_$PostCategoryEnumMap, json['category']),
    );

Map<String, dynamic> _$$GetPostsQueryModelImplToJson(
        _$GetPostsQueryModelImpl instance) =>
    <String, dynamic>{
      if (instance.offset case final value?) 'offset': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.search case final value?) 'search': value,
      if (instance.tags case final value?) 'tags': value,
      if (_$PostMyEnumMap[instance.my] case final value?) 'my': value,
      if (_$PostCategoryEnumMap[instance.category] case final value?)
        'category': value,
    };

const _$PostMyEnumMap = {
  PostMy.own: 'own',
};

const _$PostCategoryEnumMap = {
  PostCategory.study: 'STUDY',
  PostCategory.hobby: 'HOBBY',
  PostCategory.project: 'PROJECT',
  PostCategory.delivery: 'DELIVERY',
  PostCategory.roommate: 'ROOMMATE',
  PostCategory.dummy: 'DUMMY',
};
