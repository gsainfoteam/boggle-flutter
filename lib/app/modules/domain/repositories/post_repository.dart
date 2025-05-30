import 'dart:io';

import 'package:boggle_flutter/app/modules/domain/entities/post_group_entity.dart';

import '../entities/post_entity.dart';
import '../entities/post_list_entity.dart';
import '../enums/post_type.dart';

abstract class PostRepository {
  Future<PostListEntity> getPosts({
    int? offset,
    int? limit,
    //String? search,
    List<String> tags = const [],
    //PostType type = PostType.type,
  });

  Future<PostEntity> getPost(String uuid);

  Future<PostEntity> write({
    required String title,
    required String content,
    DateTime? deadline,
    required PostType type,
    List<String> tags = const [],
    List<File> images = const [],
    List<File> documents = const [],
    PostGroupEntity? group,
  });
  /*Future<PostEntity> modify({
    required String uuid,
    required String content,
    DateTime? deadline,
  });*/
  Future<void> deletePost(String uuid);
  Future<PostEntity> sendNotification(String uuid);
  Future<PostEntity> writeForeign({
    required String uuid,
    String? title,
    required String content,
    required int contentId,
    DateTime? deadline,
  });
}
