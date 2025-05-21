// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:boggle_flutter/app/modules/data/model/post_model.dart' as _i6;
import 'package:boggle_flutter/app/modules/presentation/pages/main_page.dart'
    as _i1;
import 'package:boggle_flutter/app/modules/presentation/pages/post_page.dart'
    as _i2;
import 'package:boggle_flutter/app/modules/presentation/pages/profile_others.dart'
    as _i3;
import 'package:flutter/material.dart' as _i5;

/// generated route for
/// [_i1.MainPage]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.MainPage();
    },
  );
}

/// generated route for
/// [_i2.PostPage]
class PostRoute extends _i4.PageRouteInfo<PostRouteArgs> {
  PostRoute({
    _i5.Key? key,
    required List<_i6.PostModel> postModel,
    required int index,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         PostRoute.name,
         args: PostRouteArgs(key: key, postModel: postModel, index: index),
         initialChildren: children,
       );

  static const String name = 'PostRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostRouteArgs>();
      return _i2.PostPage(
        key: args.key,
        postModel: args.postModel,
        index: args.index,
      );
    },
  );
}

class PostRouteArgs {
  const PostRouteArgs({this.key, required this.postModel, required this.index});

  final _i5.Key? key;

  final List<_i6.PostModel> postModel;

  final int index;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, postModel: $postModel, index: $index}';
  }
}

/// generated route for
/// [_i3.Profile_others_Page]
class Profile_others_Route extends _i4.PageRouteInfo<void> {
  const Profile_others_Route({List<_i4.PageRouteInfo>? children})
    : super(Profile_others_Route.name, initialChildren: children);

  static const String name = 'Profile_others_Route';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.Profile_others_Page();
    },
  );
}
