import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/data/model/user_model.dart';
//import 'package:boggle_flutter/app/modules/data/model/post_list_image_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
abstract class PostModel with _$PostModel {
  const factory PostModel({
    required String uuid,
    required String title,
    required String content,
    required String type,
    required List<String> tags,
    required UserModel author,
    required UserModel participants,
    required int maxPaticipants,
    required DateTime createdAt,
    required DateTime deadline,
    //List<PostListImageModel>? images,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
