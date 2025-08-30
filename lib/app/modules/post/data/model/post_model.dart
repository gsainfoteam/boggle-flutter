import 'package:boggle_flutter/app/modules/roommate/data/models/rm_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
//import 'package:boggle_flutter/app/modules/data/model/post_list_image_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    String? id,
    required String title,
    String? content,
    required String type,
    List<String>? tags,
    UserModel? author,
    List<UserModel>? participants,
    int? maxParticipants,
    required DateTime createdAt,
    DateTime? deadline,
    List<String>? imageUrls,
    RMModel? roommateDetails,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
