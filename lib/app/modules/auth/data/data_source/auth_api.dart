import 'package:boggle_flutter/app/modules/auth/data/model/auth_token_model.dart';
import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'auth_api.g.dart';

@injectable
@RestApi(baseUrl: 'auth')
abstract class AuthApi {
  @factoryMethod
  factory AuthApi(@Named('default') Dio dio, {String? baseUrl}) = _AuthApi;

  @POST('/login')
  Future<AuthTokenModel> login(
    @Body() UserModel body,
  );

  @POST('/refresh')
  Future<AuthTokenModel> refresh(
    @Body() AuthTokenModel body,
  );

  @POST('/logout')
  Future<void> logout(
    @Body() AuthTokenModel body,
  );
}
