import 'package:boggle_flutter/app/modules/data/model/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'user_api.g.dart';

@RestApi(baseUrl: 'user')
abstract class UserApi {
  factory UserApi(Dio dio, {String? baseUrl}) = _UserApi;

  @GET('')
  Future<UserModel> getPosts();

  @POST('')
  Future<UserModel> postPosts();

  @PUT('')
  Future<UserModel> putPosts();

  @DELETE('')
  Future<UserModel> deletePosts();
}
