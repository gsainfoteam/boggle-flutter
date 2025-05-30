import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/domain/entities/post_group_entity.dart';
import 'package:boggle_flutter/app/modules/domain/enums/post_type.dart';

part 'post_write_draft_entity.freezed.dart';

@freezed
class PostWriteDraftEntity with _$PostWriteDraftEntity {
  const PostWriteDraftEntity._();

  const factory PostWriteDraftEntity({
    @Default('') String titles,
    @Default('') String bodies,
    @Default([]) List<File> images,
    PostType? type,
    @Default([]) List<String> tags,
    DateTime? deadline,
    PostGroupEntity? group,
    @Default('') String additionalContent,
  }) = _PostWriteDraftEntity;

  bool get isValid =>
      (!titles.isNotEmpty) && (!bodies.isNotEmpty) && type != null;
  bool get hasContents =>
      !titles.isNotEmpty || !bodies.isNotEmpty || images.isNotEmpty;
}
