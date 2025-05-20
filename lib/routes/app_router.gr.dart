// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:boggle_flutter/app/modules/presentation/pages/category_page.dart'
    as _i1;
import 'package:boggle_flutter/app/modules/presentation/pages/chat_page.dart'
    as _i2;
import 'package:boggle_flutter/app/modules/presentation/pages/main_page.dart'
    as _i3;
import 'package:boggle_flutter/app/modules/presentation/pages/profile_others.dart'
    as _i4;

/// generated route for
/// [_i1.CategoryPage]
class CategoryRoute extends _i5.PageRouteInfo<void> {
  const CategoryRoute({List<_i5.PageRouteInfo>? children})
      : super(CategoryRoute.name, initialChildren: children);

  static const String name = 'CategoryRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.CategoryPage();
    },
  );
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i5.PageRouteInfo<void> {
  const ChatRoute({List<_i5.PageRouteInfo>? children})
      : super(ChatRoute.name, initialChildren: children);

  static const String name = 'ChatRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatPage();
    },
  );
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.MainPage();
    },
  );
}

/// generated route for
/// [_i4.Profile_others_Page]
class Profile_others_Route extends _i5.PageRouteInfo<void> {
  const Profile_others_Route({List<_i5.PageRouteInfo>? children})
      : super(Profile_others_Route.name, initialChildren: children);

  static const String name = 'Profile_others_Route';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i4.Profile_others_Page();
    },
  );
}
