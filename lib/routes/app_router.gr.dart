// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:boggle_flutter/app/modules/presentation/pages/category_page.dart'
    as _i1;
import 'package:boggle_flutter/app/modules/presentation/pages/chat_page.dart'
    as _i2;
import 'package:boggle_flutter/app/modules/presentation/pages/main_page.dart'
    as _i3;

/// generated route for
/// [_i1.CategoryPage]
class CategoryRoute extends _i4.PageRouteInfo<void> {
  const CategoryRoute({List<_i4.PageRouteInfo>? children})
    : super(CategoryRoute.name, initialChildren: children);

  static const String name = 'CategoryRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.CategoryPage();
    },
  );
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i4.PageRouteInfo<void> {
  const ChatRoute({List<_i4.PageRouteInfo>? children})
    : super(ChatRoute.name, initialChildren: children);

  static const String name = 'ChatRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.ChatPage();
    },
  );
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.MainPage();
    },
  );
}
