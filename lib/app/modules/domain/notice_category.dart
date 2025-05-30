import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:boggle_flutter/app/modules/domain/enums/notice_type.dart';

@JsonEnum(fieldRename: FieldRename.screamingSnake)
enum NoticeCategory {
  study,
  hobby,
  project,
  delivery,
  roommate,
  etc;

  static NoticeCategory? fromType(NoticeType type) => {
        NoticeType.study: NoticeCategory.study,
        NoticeType.hobby: NoticeCategory.hobby,
        NoticeType.project: NoticeCategory.project,
        NoticeType.delivery: NoticeCategory.delivery,
        NoticeType.roommate: NoticeCategory.roommate,
        NoticeType.general: NoticeCategory.etc,
      }[type];
}
