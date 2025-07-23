// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:boggle_flutter/app/di/module.dart' as _i133;
import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_api.dart'
    as _i1070;
import 'package:boggle_flutter/app/modules/auth/data/data_source/auth_interceptor.dart'
    as _i78;
import 'package:boggle_flutter/app/modules/auth/data/data_source/token_storage.dart'
    as _i1037;
import 'package:boggle_flutter/app/modules/auth/data/repository/rest_auth_repository.dart'
    as _i1013;
import 'package:boggle_flutter/app/modules/auth/domain/repositories/auth_repository.dart'
    as _i1033;
import 'package:boggle_flutter/app/modules/login/presentation/bloc/login_page_bloc.dart'
    as _i829;
import 'package:boggle_flutter/app/modules/post/data/data_source/post_api.dart'
    as _i199;
import 'package:boggle_flutter/app/modules/post/data/repository/rest_post_repository.dart'
    as _i772;
import 'package:boggle_flutter/app/modules/post/domain/repositories/post_repository.dart'
    as _i455;
import 'package:boggle_flutter/app/modules/post/presentation/bloc/post_page_bloc.dart'
    as _i167;
import 'package:boggle_flutter/app/modules/user/data/data_source/user_api.dart'
    as _i249;
import 'package:boggle_flutter/app/modules/user/presentation/bloc/auth_bloc.dart'
    as _i986;
import 'package:dio/dio.dart' as _i361;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i558.FlutterSecureStorage>(
        () => appModule.flutterSecureStorage);
    gh.lazySingleton<_i361.Dio>(
      () => appModule.createRefreshDio(),
      instanceName: 'refresh',
    );
    gh.lazySingleton<_i361.Dio>(
      () => appModule.createDefaultDio(),
      instanceName: 'default',
    );
    gh.factory<_i249.UserApi>(() => _i249.UserApi(
          gh<_i361.Dio>(),
          baseUrl: gh<String>(),
        ));
    gh.factory<_i1070.AuthApi>(() => _i1070.AuthApi(
          gh<_i361.Dio>(instanceName: 'default'),
          baseUrl: gh<String>(),
        ));
    gh.factory<_i199.PostApi>(() => _i199.PostApi(
          gh<_i361.Dio>(instanceName: 'default'),
          baseUrl: gh<String>(),
        ));
    gh.singleton<_i1037.TokenStorage>(
        () => _i1037.TokenStorage(gh<_i558.FlutterSecureStorage>()));
    gh.factory<_i455.PostRepository>(
        () => _i772.RestPostRepository(api: gh<_i199.PostApi>()));
    gh.factory<_i167.PostPageBloc>(
        () => _i167.PostPageBloc(gh<_i455.PostRepository>()));
    gh.factory<_i1033.AuthRepository>(() => _i1013.RestAuthRepository(
          api: gh<_i1070.AuthApi>(),
          tokenStorage: gh<_i1037.TokenStorage>(),
        ));
    gh.factory<_i829.LoginPageBloc>(
        () => _i829.LoginPageBloc(gh<_i1033.AuthRepository>()));
    gh.factory<_i986.AuthBloc>(() => _i986.AuthBloc(
          gh<_i1033.AuthRepository>(),
          gh<_i1037.TokenStorage>(),
        ));
    gh.factory<_i78.AuthInterceptors>(() => _i78.AuthInterceptors(
          gh<_i1033.AuthRepository>(),
          gh<_i1037.TokenStorage>(),
          gh<_i361.Dio>(instanceName: 'default'),
        ));
    return this;
  }
}

class _$AppModule extends _i133.AppModule {}
