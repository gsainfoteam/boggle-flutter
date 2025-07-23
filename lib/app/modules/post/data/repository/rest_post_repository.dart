import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_api.dart';
import 'package:boggle_flutter/app/modules/post/data/data_source/post_api.dart';
import 'package:boggle_flutter/app/modules/post/data/model/post_list_model.dart';
import 'package:boggle_flutter/app/modules/post/domain/repositories/post_repository.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: PostRepository)
class RestPostRepository implements PostRepository {
  final PostApi _api;
  RestPostRepository({
    required PostApi api,
  }) : _api = api;

  @override
  Future<PostListModel> getPosts(
    String type,
    int skip,
    int take,
  ) async {
    final responses = await _api.getPosts(
      type,
      skip,
      take,
    );
    return responses;
  }
}
