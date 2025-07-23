import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'user_api.g.dart';

@injectable
@RestApi(baseUrl: 'user')
abstract class UserApi {
  @factoryMethod
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
