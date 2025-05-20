// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:boggle_flutter/app/modules/presentation/pages/main_page.dart'
    as _i1;
import 'package:boggle_flutter/app/modules/presentation/pages/profile_others.dart'
    as _i2;

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i3.PageRouteInfo<void> {
  const MainRoute({List<_i3.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i1.MainPage();
    },
  );
}

/// generated route for
/// [_i2.Profile_others_Page]
class Profile_others_Route extends _i3.PageRouteInfo<void> {
  const Profile_others_Route({List<_i3.PageRouteInfo>? children})
    : super(Profile_others_Route.name, initialChildren: children);

  static const String name = 'Profile_others_Route';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.Profile_others_Page();
    },
  );
}
