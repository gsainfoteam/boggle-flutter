import 'package:boggle_flutter/app/modules/data/model/post_list_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'post_api.g.dart';

@RestApi(baseUrl: 'post')
abstract class PostApi {
  factory PostApi(Dio dio, {String? baseUrl}) = _PostApi;

  @GET('')
  Future<PostListModel> getPosts();

  @POST('')
  Future<PostListModel> postPosts();

  @PUT('')
  Future<PostListModel> putPosts();

  @DELETE('')
  Future<PostListModel> deletePosts();
}
