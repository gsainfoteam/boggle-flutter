import 'package:boggle_flutter/app/modules/post/data/model/post_list_model.dart';

abstract class PostRepository {
  Future<PostListModel> getPosts(
    String type,
    int skip,
    int take,
  );
}
