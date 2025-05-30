import 'package:cached_network_image/cached_network_image.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/domain/entities/post_group_entity.dart';
import 'package:boggle_flutter/app/modules/domain/entities/post_write_draft_entity.dart';
import 'package:boggle_flutter/app/modules/domain/enums/post_category.dart';
import 'package:boggle_flutter/app/modules/domain/entities/user_entity.dart';
import 'post_content_entity.dart';

class PostEntity {
  final String uuid;
  final DateTime? deadline;
  final DateTime createdAt;
  final List<String> tags;
  final String titles;
  final String content;
  final String authorName;
  final String authorUuid;
  final List<UserEntity> participants;
  //final List<ImageProvider> images;
  //final List<String> documentUrls;
  //final bool isReminded;
  //final DateTime publishedAt;
  //final PostGroupEntity? group;
  final PostCategory category;
  final int id;

  PostEntity({
    required this.uuid,
    required this.deadline,
    required this.createdAt,
    required this.tags,
    required this.titles,
    required this.content,
    required this.authorName,
    required this.authorUuid,
    required this.participants,
    required this.category,
    required this.id,
  });

  factory PostEntity.fromId(String uuid) => PostEntity(
        uuid: uuid,
        id: 0,
        deadline: null,
        createdAt: DateTime.now(),
        tags: [],
        titles: '',
        content: '',
        authorName: '',
        authorUuid: '',
        participants: [
          UserEntity(name: '', uuid: '', email: '', studentUuid: '', major: '')
        ],
        category: PostCategory.dummy,
      );
  factory PostEntity.mock({
    DateTime? deadline,
    required DateTime createdAt,
    List<String> tags = const [],
    required String title,
    required String content,
    String authorName = '홍길동',
    String authorEmail = 'example@ex.com',
    String authorUuid = '2d87779b-7632-4163-afa0-5062d83e325b',
    String authorMajor = '전기전자컴퓨터공학부',
    List<String> imageUrls = const [],
    bool isReminded = false,
    PostCategory category = PostCategory.dummy,
  }) =>
      PostEntity(
        uuid: '',
        id: 0,
        deadline: deadline,
        createdAt: createdAt,
        tags: tags,
        titles: title,
        content: content,
        authorName: authorName,
        authorUuid: authorUuid,
        participants: [
          UserEntity(
              name: authorName,
              uuid: '',
              email: authorEmail,
              studentUuid: authorUuid,
              major: authorMajor),
        ],
        category: category,
      );
  factory PostEntity.fromDraft({
    required PostWriteDraftEntity draft,
    required UserEntity user,
  }) =>
      PostEntity(
        uuid: '',
        id: 0,
        deadline: draft.deadline,
        createdAt: DateTime.now(),
        tags: draft.tags,
        titles: draft.titles,
        content: draft.bodies,
        authorName: '',
        authorUuid: '',
        participants: [
          UserEntity(
              name: user.name,
              uuid: '',
              email: user.email,
              major: user.major,
              studentUuid: user.studentUuid),
        ],
        category: PostCategory.fromType(draft.type!)!,
      );
}
