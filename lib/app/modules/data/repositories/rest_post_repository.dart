import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:boggle_flutter/app/modules/data/data_source/post_api.dart';
import 'package:boggle_flutter/app/modules/data/enums/post_my.dart';
import 'package:boggle_flutter/app/modules/data/model/create_post_model.dart';
import 'package:boggle_flutter/app/modules/data/model/get_posts_query_model.dart';
//import 'package:boggle_flutter/app/modules/data/model/modify_post_model.dart';
import 'package:boggle_flutter/app/modules/domain/entities/post_entity.dart';
import 'package:boggle_flutter/app/modules/domain/entities/post_group_entity.dart';
import 'package:boggle_flutter/app/modules/domain/entities/post_list_entity.dart';
import 'package:boggle_flutter/app/modules/domain/enums/post_category.dart';
import 'package:boggle_flutter/app/modules/domain/enums/post_type.dart';
import 'package:boggle_flutter/app/modules/domain/repositories/post_repository.dart';

@Injectable(as: PostRepository)
class RestPostRepository implements PostRepository {
  final PostApi _api;

  RestPostRepository(
    this._api,
  );

  @override
  Future<void> deletePost(String uuid) {
    return _api.deletePost(uuid);
  }

  @override
  Future<PostEntity> getPost(String uuid) async {
    final post = await _api.getPost(uuid);
    return post;
  }

  @override
  Future<NoticeListEntity> getNotices({
    int? offset,
    int? limit,
    String? search,
    List<String> tags = const [],
    NoticeType type = NoticeType.all,
    String? groupId,
  }) {
    return _api.getNotices(
      GetNoticesQueryModel(
          offset: offset,
          limit: limit,
          search: search,
          tags: tags,
          my: NoticeMy.fromType(type),
          orderBy: NoticeSort.fromType(type),
          lang: Language.getCurrentLanguage(),
          category: NoticeCategory.fromType(type),
          groupId: groupId),
    );
  }

  @override
  Future<NoticeEntity> modify(
      {required int id, required String content, DateTime? deadline}) {
    return _api.modifyNotice(
      id,
      ModifyNoticeModel(
        body: content,
        deadline: deadline,
      ),
    );
  }

  @override
  Future<NoticeEntity> removeReaction(int id, String emoji) {
    return _api.removeReaction(id, emoji);
  }

  Future<TagEntity> _createTag(String name) {
    return _tagApi.createTag(name);
  }

  Future<TagEntity?> _getTag(String name) async {
    try {
      return await _tagApi.findTag(name);
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) return null;
      rethrow;
    }
  }

  Future<String?> _getGroupsToken() async {
    try {
      final response = await _groupApi.getGroupToken();
      return response.groupsToken;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<NoticeEntity> write({
    required String title,
    required String content,
    DateTime? deadline,
    required NoticeType type,
    List<String> tags = const [],
    List<File> images = const [],
    List<File> documents = const [],
    NoticeGroupEntity? group,
  }) async {
    final uploadedTags = await Future.wait(
      tags.map((tag) async {
        final existingTag = await _getTag(tag);
        return existingTag ?? await _createTag(tag);
      }),
    );
    final uploadedImages =
        images.isEmpty ? <String>[] : await _imageApi.uploadImages(images);
    final uploadedDocuments = documents.isEmpty
        ? <String>[]
        : await _documentApi.uploadDocuments(documents);

    final groupsToken = await _getGroupsToken();

    return _api.createNotice(
      CreateNoticeModel(
        title: title,
        body: content,
        deadline: deadline,
        category: NoticeCategory.fromType(type)!,
        tags: uploadedTags.map((tag) => tag.id).toList(),
        images: uploadedImages,
        documents: uploadedDocuments,
        groupId: group?.uuid,
      ),
      groupsToken,
    );
  }

  @override
  Future<NoticeEntity> writeForeign({
    required int id,
    String? title,
    required String content,
    required int contentId,
    required Language lang,
    DateTime? deadline,
  }) async {
    return _api.addForeign(
      id,
      contentId,
      CreateForeignNoticeModel(
        title: title,
        body: content,
        deadline: deadline,
        lang: lang,
      ),
    );
  }

  @override
  Future<NoticeEntity> sendNotification(int id) async {
    await _api.alarm(id);
    return _api.getNotice(id);
  }
}
