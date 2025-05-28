// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:boggle_flutter/app/modules/data/model/post_model.dart' as _i7;
import 'package:boggle_flutter/app/modules/data/model/user_model.dart' as _i8;
import 'package:boggle_flutter/app/modules/presentation/pages/home_page.dart'
    as _i1;
import 'package:boggle_flutter/app/modules/presentation/pages/main_page.dart'
    as _i2;
import 'package:boggle_flutter/app/modules/presentation/pages/post_page.dart'
    as _i3;
import 'package:boggle_flutter/app/modules/presentation/pages/profile_others.dart'
    as _i4;
import 'package:flutter/material.dart' as _i6;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i6.Key? key,
    required List<_i7.PostModel> postModel,
    required int index,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         HomeRoute.name,
         args: HomeRouteArgs(key: key, postModel: postModel, index: index),
         initialChildren: children,
       );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HomeRouteArgs>();
      return _i1.HomePage(
        key: args.key,
        postModel: args.postModel,
        index: args.index,
      );
    },
  );
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key, required this.postModel, required this.index});

  final _i6.Key? key;

  final List<_i7.PostModel> postModel;

  final int index;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key, postModel: $postModel, index: $index}';
  }
}

/// generated route for
/// [_i2.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainPage();
    },
  );
}

/// generated route for
/// [_i3.PostPage]
class PostRoute extends _i5.PageRouteInfo<PostRouteArgs> {
  PostRoute({
    _i6.Key? key,
    required List<_i7.PostModel> postModel,
    required int index,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         PostRoute.name,
         args: PostRouteArgs(key: key, postModel: postModel, index: index),
         initialChildren: children,
       );

  static const String name = 'PostRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostRouteArgs>();
      return _i3.PostPage(
        key: args.key,
        postModel: args.postModel,
        index: args.index,
      );
    },
  );
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.postModel, required this.index});

  final _i6.Key? key;

  final List<_i7.PostModel> postModel;

  final int index;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, postModel: $postModel, index: $index}';
  }
}

/// generated route for
/// [_i4.Profile_others_Page]
class Profile_others_Route extends _i5.PageRouteInfo<Profile_others_RouteArgs> {
  Profile_others_Route({
    _i6.Key? key,
    required int index,
    required List<_i7.PostModel> postModel,
    required _i8.UserModel userModel,
    List<_i5.PageRouteInfo>? children,
  }) : super(
         Profile_others_Route.name,
         args: Profile_others_RouteArgs(
           key: key,
           index: index,
           postModel: postModel,
           userModel: userModel,
         ),
         initialChildren: children,
       );

  static const String name = 'Profile_others_Route';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<Profile_others_RouteArgs>();
      return _i4.Profile_others_Page(
        key: args.key,
        index: args.index,
        postModel: args.postModel,
        userModel: args.userModel,
      );
    },
  );
}

class Profile_others_RouteArgs {
  const Profile_others_RouteArgs({
    this.key,
    required this.index,
    required this.postModel,
    required this.userModel,
  });

  final _i6.Key? key;

  final int index;

  final List<_i7.PostModel> postModel;

  final _i8.UserModel userModel;

  @override
  String toString() {
    return 'Profile_others_RouteArgs{key: $key, index: $index, postModel: $postModel, userModel: $userModel}';
  }
}
