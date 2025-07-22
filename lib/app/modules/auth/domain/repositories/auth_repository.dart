import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_api.dart';
import 'package:boggle_flutter/app/modules/auth/data/data_source/token_storage.dart';
import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:boggle_flutter/app/modules/auth/data/model/auth_token_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class AuthRepository {
  Future<void> login(
    UserModel user,
  );
  Future<AuthTokenModel> refresh(
    AuthTokenModel refreshToken,
  );
  Future<void> logout();
}
