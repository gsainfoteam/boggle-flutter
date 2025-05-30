// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_write_draft_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostWriteDraftEntity {
  String get titles => throw _privateConstructorUsedError;
  String get bodies => throw _privateConstructorUsedError;
  List<File> get images => throw _privateConstructorUsedError;
  PostType? get type => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  PostGroupEntity? get group => throw _privateConstructorUsedError;
  String get additionalContent => throw _privateConstructorUsedError;

  /// Create a copy of PostWriteDraftEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostWriteDraftEntityCopyWith<PostWriteDraftEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostWriteDraftEntityCopyWith<$Res> {
  factory $PostWriteDraftEntityCopyWith(PostWriteDraftEntity value,
          $Res Function(PostWriteDraftEntity) then) =
      _$PostWriteDraftEntityCopyWithImpl<$Res, PostWriteDraftEntity>;
  @useResult
  $Res call(
      {String titles,
      String bodies,
      List<File> images,
      PostType? type,
      List<String> tags,
      DateTime? deadline,
      PostGroupEntity? group,
      String additionalContent});

  $PostGroupEntityCopyWith<$Res>? get group;
}

/// @nodoc
class _$PostWriteDraftEntityCopyWithImpl<$Res,
        $Val extends PostWriteDraftEntity>
    implements $PostWriteDraftEntityCopyWith<$Res> {
  _$PostWriteDraftEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostWriteDraftEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titles = null,
    Object? bodies = null,
    Object? images = null,
    Object? type = freezed,
    Object? tags = null,
    Object? deadline = freezed,
    Object? group = freezed,
    Object? additionalContent = null,
  }) {
    return _then(_value.copyWith(
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as String,
      bodies: null == bodies
          ? _value.bodies
          : bodies // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as PostGroupEntity?,
      additionalContent: null == additionalContent
          ? _value.additionalContent
          : additionalContent // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of PostWriteDraftEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostGroupEntityCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $PostGroupEntityCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostWriteDraftEntityImplCopyWith<$Res>
    implements $PostWriteDraftEntityCopyWith<$Res> {
  factory _$$PostWriteDraftEntityImplCopyWith(_$PostWriteDraftEntityImpl value,
          $Res Function(_$PostWriteDraftEntityImpl) then) =
      __$$PostWriteDraftEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String titles,
      String bodies,
      List<File> images,
      PostType? type,
      List<String> tags,
      DateTime? deadline,
      PostGroupEntity? group,
      String additionalContent});

  @override
  $PostGroupEntityCopyWith<$Res>? get group;
}

/// @nodoc
class __$$PostWriteDraftEntityImplCopyWithImpl<$Res>
    extends _$PostWriteDraftEntityCopyWithImpl<$Res, _$PostWriteDraftEntityImpl>
    implements _$$PostWriteDraftEntityImplCopyWith<$Res> {
  __$$PostWriteDraftEntityImplCopyWithImpl(_$PostWriteDraftEntityImpl _value,
      $Res Function(_$PostWriteDraftEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostWriteDraftEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? titles = null,
    Object? bodies = null,
    Object? images = null,
    Object? type = freezed,
    Object? tags = null,
    Object? deadline = freezed,
    Object? group = freezed,
    Object? additionalContent = null,
  }) {
    return _then(_$PostWriteDraftEntityImpl(
      titles: null == titles
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as String,
      bodies: null == bodies
          ? _value.bodies
          : bodies // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PostType?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as PostGroupEntity?,
      additionalContent: null == additionalContent
          ? _value.additionalContent
          : additionalContent // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PostWriteDraftEntityImpl extends _PostWriteDraftEntity {
  const _$PostWriteDraftEntityImpl(
      {this.titles = '',
      this.bodies = '',
      final List<File> images = const [],
      this.type,
      final List<String> tags = const [],
      this.deadline,
      this.group,
      this.additionalContent = ''})
      : _images = images,
        _tags = tags,
        super._();

  @override
  @JsonKey()
  final String titles;
  @override
  @JsonKey()
  final String bodies;
  final List<File> _images;
  @override
  @JsonKey()
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final PostType? type;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final DateTime? deadline;
  @override
  final PostGroupEntity? group;
  @override
  @JsonKey()
  final String additionalContent;

  @override
  String toString() {
    return 'PostWriteDraftEntity(titles: $titles, bodies: $bodies, images: $images, type: $type, tags: $tags, deadline: $deadline, group: $group, additionalContent: $additionalContent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostWriteDraftEntityImpl &&
            (identical(other.titles, titles) || other.titles == titles) &&
            (identical(other.bodies, bodies) || other.bodies == bodies) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.additionalContent, additionalContent) ||
                other.additionalContent == additionalContent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      titles,
      bodies,
      const DeepCollectionEquality().hash(_images),
      type,
      const DeepCollectionEquality().hash(_tags),
      deadline,
      group,
      additionalContent);

  /// Create a copy of PostWriteDraftEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostWriteDraftEntityImplCopyWith<_$PostWriteDraftEntityImpl>
      get copyWith =>
          __$$PostWriteDraftEntityImplCopyWithImpl<_$PostWriteDraftEntityImpl>(
              this, _$identity);
}

abstract class _PostWriteDraftEntity extends PostWriteDraftEntity {
  const factory _PostWriteDraftEntity(
      {final String titles,
      final String bodies,
      final List<File> images,
      final PostType? type,
      final List<String> tags,
      final DateTime? deadline,
      final PostGroupEntity? group,
      final String additionalContent}) = _$PostWriteDraftEntityImpl;
  const _PostWriteDraftEntity._() : super._();

  @override
  String get titles;
  @override
  String get bodies;
  @override
  List<File> get images;
  @override
  PostType? get type;
  @override
  List<String> get tags;
  @override
  DateTime? get deadline;
  @override
  PostGroupEntity? get group;
  @override
  String get additionalContent;

  /// Create a copy of PostWriteDraftEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostWriteDraftEntityImplCopyWith<_$PostWriteDraftEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
