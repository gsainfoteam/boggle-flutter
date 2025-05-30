import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/domain/notice_category.dart';

part 'create_post_model.freezed.dart';
part 'create_post_model.g.dart';

@freezed
class CreatePostModel with _$CreatePostModel {
  const factory CreatePostModel({
    required String title,
    required String content,
    required String type,
    @Default([]) List<String> tags,
    required int maxParticipants,
    required DateTime deadline,
  }) = _CreatePostModel;

  factory CreatePostModel.fromJson(Map<String, dynamic> json) =>
      _$CreatePostModelFromJson(json);
}
