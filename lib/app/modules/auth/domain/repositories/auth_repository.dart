import 'package:boggle_flutter/app/modules/auth/data/model/auth_token_model.dart';

abstract class AuthRepository {
  Future<void> login(
    String id,
    String password,
  );
  Future<AuthTokenModel> refresh(
    AuthTokenModel refreshToken,
  );
  Future<void> logout();
}
