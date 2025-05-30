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
      my: $enumDecodeNullable(_$NoticeMyEnumMap, json['my']),
      category: $enumDecodeNullable(_$NoticeCategoryEnumMap, json['category']),
      groupId: json['group-id'] as String?,
    );

Map<String, dynamic> _$$GetPostsQueryModelImplToJson(
        _$GetPostsQueryModelImpl instance) =>
    <String, dynamic>{
      if (instance.offset case final value?) 'offset': value,
      if (instance.limit case final value?) 'limit': value,
      if (instance.search case final value?) 'search': value,
      if (instance.tags case final value?) 'tags': value,
      if (_$NoticeMyEnumMap[instance.my] case final value?) 'my': value,
      if (_$NoticeCategoryEnumMap[instance.category] case final value?)
        'category': value,
      if (instance.groupId case final value?) 'group-id': value,
    };

const _$NoticeMyEnumMap = {
  NoticeMy.own: 'own',
};

const _$NoticeCategoryEnumMap = {
  NoticeCategory.study: 'STUDY',
  NoticeCategory.hobby: 'HOBBY',
  NoticeCategory.project: 'PROJECT',
  NoticeCategory.delivery: 'DELIVERY',
  NoticeCategory.roommate: 'ROOMMATE',
  NoticeCategory.etc: 'ETC',
};
