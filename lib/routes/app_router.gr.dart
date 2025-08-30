// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:boggle_flutter/app/modules/category/presentation/view/category_page.dart'
    as _i1;
import 'package:boggle_flutter/app/modules/groupPurchase/presentation/view/gp_page.dart'
    as _i2;
import 'package:boggle_flutter/app/modules/login/presentation/view/login_page.dart'
    as _i3;
import 'package:boggle_flutter/app/modules/other/presentation/view/other_page.dart'
    as _i5;
import 'package:boggle_flutter/app/modules/post/presentation/view/post_page.dart'
    as _i6;
import 'package:boggle_flutter/app/modules/roommate/presentation/view/make_rm_page.dart'
    as _i4;
import 'package:boggle_flutter/app/modules/study/presentation/view/study_page.dart'
    as _i7;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.CategoryPage]
class CategoryRoute extends _i8.PageRouteInfo<void> {
  const CategoryRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoryRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.CategoryPage();
    },
  );
}

/// generated route for
/// [_i2.GroupPurchasePage]
class GroupPurchaseRoute extends _i8.PageRouteInfo<void> {
  const GroupPurchaseRoute({List<_i8.PageRouteInfo>? children})
      : super(
          GroupPurchaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'GroupPurchaseRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.GroupPurchasePage();
    },
  );
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.LoginPage();
    },
  );
}

/// generated route for
/// [_i4.MakeRMPage]
class MakeRMRoute extends _i8.PageRouteInfo<MakeRMRouteArgs> {
  MakeRMRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          MakeRMRoute.name,
          args: MakeRMRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'MakeRMRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<MakeRMRouteArgs>(orElse: () => const MakeRMRouteArgs());
      return _i4.MakeRMPage(key: args.key);
    },
  );
}

class MakeRMRouteArgs {
  const MakeRMRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'MakeRMRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.OtherPage]
class OtherRoute extends _i8.PageRouteInfo<void> {
  const OtherRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OtherRoute.name,
          initialChildren: children,
        );

  static const String name = 'OtherRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.OtherPage();
    },
  );
}

/// generated route for
/// [_i6.PostPage]
class PostRoute extends _i8.PageRouteInfo<void> {
  const PostRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PostRoute.name,
          initialChildren: children,
        );

  static const String name = 'PostRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.PostPage();
    },
  );
}

/// generated route for
/// [_i7.StudyPage]
class StudyRoute extends _i8.PageRouteInfo<void> {
  const StudyRoute({List<_i8.PageRouteInfo>? children})
      : super(
          StudyRoute.name,
          initialChildren: children,
        );

  static const String name = 'StudyRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.StudyPage();
    },
  );
}
