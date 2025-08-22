import 'package:boggle_flutter/app/modules/user/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_entity.freezed.dart';
part 'post_entity.g.dart';

@freezed
class PostEntity with _$PostEntity {
  const factory PostEntity({
    required String id,
    required String title,
    required String content,
    required String type,
    List<String>? tags,
    required UserEntity author,
    required int maxParticipants,
    required DateTime createdAt,
    required DateTime deadline,
    //List<PostListImageEntity>? images,
  }) = _PostEntity;

  factory PostEntity.fromJson(Map<String, dynamic> json) =>
      _$PostEntityFromJson(json);
}
