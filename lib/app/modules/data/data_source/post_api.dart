import 'package:boggle_flutter/app/modules/data/model/create_post_model.dart';
import 'package:boggle_flutter/app/modules/data/model/get_posts_query_model.dart';
import 'package:boggle_flutter/app/modules/data/model/post_list_model.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'post_api.g.dart';

@RestApi(baseUrl: 'post?type=ALL&skip=1&take=10')
abstract class PostApi {
  factory PostApi(Dio dio, {String? baseUrl}) = _PostApi;

  @GET('')
  Future<PostListModel> getPosts(@Queries() GetPostsQueryModel query);

  @POST('')
  Future<PostModel> postPosts(
    @Body() CreatePostModel model,
  );

  @GET('{id}')
  Future<PostModel> getPost(
    @Path('uuid') String uuid,
  );

  @DELETE('{id}')
  Future<PostListModel> deletePosts(@Path('uuid') String uuid);
}
