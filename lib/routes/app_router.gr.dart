// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:boggle_flutter/app/modules/login/presentation/view/login_page.dart'
    as _i1;
import 'package:boggle_flutter/app/modules/post/presentation/view/post_page.dart'
    as _i2;
import 'package:boggle_flutter/app/modules/user/presentation/view/profile_others.dart'
    as _i3;

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute({List<_i4.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.LoginPage();
    },
  );
}

/// generated route for
/// [_i2.PostPage]
class PostRoute extends _i4.PageRouteInfo<void> {
  const PostRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PostRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.PostPage();
    },
  );
}

/// generated route for
/// [_i3.Profile_others_Page]
class Profile_others_Route extends _i4.PageRouteInfo<void> {
  const Profile_others_Route({List<_i4.PageRouteInfo>? children})
      : super(
          Profile_others_Route.name,
          initialChildren: children,
        );

  static const String name = 'Profile_others_Route';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.Profile_others_Page();
    },
  );
}
