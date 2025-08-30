// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostListEntity _$PostListEntityFromJson(Map<String, dynamic> json) {
  return _PostListEntity.fromJson(json);
}

/// @nodoc
mixin _$PostListEntity {
  int get total => throw _privateConstructorUsedError;
  List<PostEntity> get posts => throw _privateConstructorUsedError;

  /// Serializes this PostListEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostListEntityCopyWith<PostListEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListEntityCopyWith<$Res> {
  factory $PostListEntityCopyWith(
          PostListEntity value, $Res Function(PostListEntity) then) =
      _$PostListEntityCopyWithImpl<$Res, PostListEntity>;
  @useResult
  $Res call({int total, List<PostEntity> posts});
}

/// @nodoc
class _$PostListEntityCopyWithImpl<$Res, $Val extends PostListEntity>
    implements $PostListEntityCopyWith<$Res> {
  _$PostListEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostListEntityImplCopyWith<$Res>
    implements $PostListEntityCopyWith<$Res> {
  factory _$$PostListEntityImplCopyWith(_$PostListEntityImpl value,
          $Res Function(_$PostListEntityImpl) then) =
      __$$PostListEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, List<PostEntity> posts});
}

/// @nodoc
class __$$PostListEntityImplCopyWithImpl<$Res>
    extends _$PostListEntityCopyWithImpl<$Res, _$PostListEntityImpl>
    implements _$$PostListEntityImplCopyWith<$Res> {
  __$$PostListEntityImplCopyWithImpl(
      _$PostListEntityImpl _value, $Res Function(_$PostListEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostListEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? posts = null,
  }) {
    return _then(_$PostListEntityImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostListEntityImpl implements _PostListEntity {
  const _$PostListEntityImpl(
      {required this.total, required final List<PostEntity> posts})
      : _posts = posts;

  factory _$PostListEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostListEntityImplFromJson(json);

  @override
  final int total;
  final List<PostEntity> _posts;
  @override
  List<PostEntity> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'PostListEntity(total: $total, posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListEntityImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_posts));

  /// Create a copy of PostListEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListEntityImplCopyWith<_$PostListEntityImpl> get copyWith =>
      __$$PostListEntityImplCopyWithImpl<_$PostListEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostListEntityImplToJson(
      this,
    );
  }
}

abstract class _PostListEntity implements PostListEntity {
  const factory _PostListEntity(
      {required final int total,
      required final List<PostEntity> posts}) = _$PostListEntityImpl;

  factory _PostListEntity.fromJson(Map<String, dynamic> json) =
      _$PostListEntityImpl.fromJson;

  @override
  int get total;
  @override
  List<PostEntity> get posts;

  /// Create a copy of PostListEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostListEntityImplCopyWith<_$PostListEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
