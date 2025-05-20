// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostListModel {
  int get count;
  List<PostModel> get list;

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostListModelCopyWith<PostListModel> get copyWith =>
      _$PostListModelCopyWithImpl<PostListModel>(
          this as PostListModel, _$identity);

  /// Serializes this PostListModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostListModel &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(list));

  @override
  String toString() {
    return 'PostListModel(count: $count, list: $list)';
  }
}

/// @nodoc
abstract mixin class $PostListModelCopyWith<$Res> {
  factory $PostListModelCopyWith(
          PostListModel value, $Res Function(PostListModel) _then) =
      _$PostListModelCopyWithImpl;
  @useResult
  $Res call({int count, List<PostModel> list});
}

/// @nodoc
class _$PostListModelCopyWithImpl<$Res>
    implements $PostListModelCopyWith<$Res> {
  _$PostListModelCopyWithImpl(this._self, this._then);

  final PostListModel _self;
  final $Res Function(PostListModel) _then;

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? list = null,
  }) {
    return _then(_self.copyWith(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _self.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PostListModel implements PostListModel {
  const _PostListModel(
      {required this.count, required final List<PostModel> list})
      : _list = list;
  factory _PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);

  @override
  final int count;
  final List<PostModel> _list;
  @override
  List<PostModel> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostListModelCopyWith<_PostListModel> get copyWith =>
      __$PostListModelCopyWithImpl<_PostListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostListModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostListModel &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_list));

  @override
  String toString() {
    return 'PostListModel(count: $count, list: $list)';
  }
}

/// @nodoc
abstract mixin class _$PostListModelCopyWith<$Res>
    implements $PostListModelCopyWith<$Res> {
  factory _$PostListModelCopyWith(
          _PostListModel value, $Res Function(_PostListModel) _then) =
      __$PostListModelCopyWithImpl;
  @override
  @useResult
  $Res call({int count, List<PostModel> list});
}

/// @nodoc
class __$PostListModelCopyWithImpl<$Res>
    implements _$PostListModelCopyWith<$Res> {
  __$PostListModelCopyWithImpl(this._self, this._then);

  final _PostListModel _self;
  final $Res Function(_PostListModel) _then;

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? count = null,
    Object? list = null,
  }) {
    return _then(_PostListModel(
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      list: null == list
          ? _self._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<PostModel>,
    ));
  }
}

// dart format on
