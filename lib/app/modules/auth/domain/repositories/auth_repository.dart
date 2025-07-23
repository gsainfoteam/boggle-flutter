import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
import 'package:boggle_flutter/app/modules/auth/data/model/auth_token_model.dart';

abstract class AuthRepository {
  Future<void> login(
    UserModel user,
  );
  Future<AuthTokenModel> refresh(
    AuthTokenModel refreshToken,
  );
  Future<void> logout();
}
