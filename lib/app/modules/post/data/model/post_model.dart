import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
//import 'package:boggle_flutter/app/modules/data/model/post_list_image_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
abstract class PostModel with _$PostModel {
  const factory PostModel({
    required String id,
    required String title,
    required String content,
    required String type,
    List<String>? tags,
    //required UserModel author,
    required UserModel author,
    List<UserModel>? participants,
    required int maxParticipants,
    required DateTime createdAt,
    required DateTime deadline,
    //List<PostListImageModel>? images,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
