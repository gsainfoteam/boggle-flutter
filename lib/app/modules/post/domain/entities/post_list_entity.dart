import 'package:boggle_flutter/app/modules/post/domain/entities/post_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_list_entity.freezed.dart';
part 'post_list_entity.g.dart';

@freezed
class PostListEntity with _$PostListEntity {
  const factory PostListEntity({
    required int total,
    required List<PostEntity> posts,
  }) = _PostListEntity;

  factory PostListEntity.fromJson(Map<String, dynamic> json) =>
      _$PostListEntityFromJson(json);
}
