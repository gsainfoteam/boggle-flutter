import 'package:boggle_flutter/app/modules/data/model/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'user_api.g.dart';

@RestApi(baseUrl: 'user')
abstract class UserApi {
  factory UserApi(Dio dio, {String? baseUrl}) = _UserApi;

  @GET('')
  Future<UserModel> getUsers();

  @POST('')
  Future<UserModel> postUsers();

  @PUT('')
  Future<UserModel> putUsers();

  @DELETE('')
  Future<UserModel> deleteUsers();
}
