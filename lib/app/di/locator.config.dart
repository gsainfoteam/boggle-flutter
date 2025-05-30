// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:boggle_flutter/app/modules/data/data_source/post_api.dart'
    as _i1057;
import 'package:boggle_flutter/app/modules/data/repositories/rest_post_repository.dart'
    as _i918;
import 'package:boggle_flutter/app/modules/domain/repositories/analytics_repository.dart'
    as _i33;
import 'package:boggle_flutter/app/modules/domain/repositories/post_repository.dart'
    as _i423;
import 'package:boggle_flutter/app/modules/presentation/bloc/post_bloc.dart'
    as _i251;
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
    gh.factory<_i423.PostRepository>(
        () => _i918.RestPostRepository(gh<_i1057.PostApi>()));
    gh.factory<_i251.PostBloc>(() => _i251.PostBloc(
          gh<_i423.PostRepository>(),
          gh<_i33.AnalyticsRepository>(),
        ));
    return this;
  }
}
