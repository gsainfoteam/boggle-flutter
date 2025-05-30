// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_group_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostGroupEntityImpl _$$PostGroupEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PostGroupEntityImpl(
      uuid: json['uuid'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      presidentUuid: json['presidentUuid'] as String?,
      memberCount: (json['memberCount'] as num?)?.toInt(),
      verifiedAt: json['verifiedAt'] == null
          ? null
          : DateTime.parse(json['verifiedAt'] as String),
      verified: json['verified'] as bool?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      notionPageId: json['notionPageId'] as String?,
      profileImageKey: json['profileImageKey'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PostGroupEntityImplToJson(
        _$PostGroupEntityImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'description': instance.description,
      'createdAt': instance.createdAt?.toIso8601String(),
      'presidentUuid': instance.presidentUuid,
      'memberCount': instance.memberCount,
      'verifiedAt': instance.verifiedAt?.toIso8601String(),
      'verified': instance.verified,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'notionPageId': instance.notionPageId,
      'profileImageKey': instance.profileImageKey,
      'id': instance.id,
    };
