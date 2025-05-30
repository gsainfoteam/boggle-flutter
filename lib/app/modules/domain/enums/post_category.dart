import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:boggle_flutter/app/modules/domain/enums/post_type.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum PostCategory {
  study,
  hobby,
  project,
  delivery,
  roommate,
  dummy;

  static PostCategory? fromType(PostType type) => {
        PostType.study: PostCategory.study,
        PostType.hobby: PostCategory.hobby,
        PostType.project: PostCategory.project,
        PostType.delivery: PostCategory.delivery,
        PostType.roommate: PostCategory.roommate,
        PostType.dummy: PostCategory.dummy,
      }[type];
}
