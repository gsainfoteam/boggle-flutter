import 'package:boggle_flutter/app/modules/auth/data/model/auth_token_model.dart';
import 'package:boggle_flutter/app/modules/auth/data/model/token_request_with_code_model.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'auth_api.g.dart';

@injectable
@RestApi(baseUrl: 'oauth/')
abstract class AuthApi {
  @factoryMethod
  factory AuthApi(@Named('auth') Dio dio) = _AuthApi;

  @POST('token')
  Future<AuthTokenModel> getTokenFromCode(
    @Body() TokenRequestWithCodeModel request,
  );
}
