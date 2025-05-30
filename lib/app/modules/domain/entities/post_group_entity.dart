import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/domain/entities/group_entity.dart';

part 'post_group_entity.freezed.dart';
part 'post_group_entity.g.dart';

@freezed
class PostGroupEntity with _$PostGroupEntity {
  const PostGroupEntity._();

  const factory PostGroupEntity({
    required String? uuid,
    required String? name,
    required String? description,
    required DateTime? createdAt,
    required String? presidentUuid,
    required int? memberCount,
    required DateTime? verifiedAt,
    required bool? verified,
    required DateTime? deletedAt,
    required String? notionPageId,
    required String? profileImageKey,
    required int? id,
  }) = _PostGroupEntity;

  factory PostGroupEntity.fromJson(Map<String, dynamic> json) =>
      _$PostGroupEntityFromJson(json);

  factory PostGroupEntity.fromGroupModel(GroupEntity model) {
    return PostGroupEntity(
      uuid: model.uuid,
      id: model.id,
      name: model.name,
      description: model.description,
      createdAt: model.createdAt,
      presidentUuid: model.presidentUuid,
      memberCount: model.memberCount ?? 0,
      verifiedAt: model.verifiedAt,
      verified: model.verified ?? false,
      deletedAt: model.deletedAt,
      notionPageId: model.notionPageId,
      profileImageKey: model.profileImageKey,
    );
  }
}
