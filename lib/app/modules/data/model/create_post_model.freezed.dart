// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreatePostModel _$CreatePostModelFromJson(Map<String, dynamic> json) {
  return _CreatePostModel.fromJson(json);
}

/// @nodoc
mixin _$CreatePostModel {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  int get maxParticipants => throw _privateConstructorUsedError;
  DateTime get deadline => throw _privateConstructorUsedError;

  /// Serializes this CreatePostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreatePostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreatePostModelCopyWith<CreatePostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostModelCopyWith<$Res> {
  factory $CreatePostModelCopyWith(
          CreatePostModel value, $Res Function(CreatePostModel) then) =
      _$CreatePostModelCopyWithImpl<$Res, CreatePostModel>;
  @useResult
  $Res call(
      {String title,
      String content,
      String type,
      List<String> tags,
      int maxParticipants,
      DateTime deadline});
}

/// @nodoc
class _$CreatePostModelCopyWithImpl<$Res, $Val extends CreatePostModel>
    implements $CreatePostModelCopyWith<$Res> {
  _$CreatePostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreatePostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? tags = null,
    Object? maxParticipants = null,
    Object? deadline = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreatePostModelImplCopyWith<$Res>
    implements $CreatePostModelCopyWith<$Res> {
  factory _$$CreatePostModelImplCopyWith(_$CreatePostModelImpl value,
          $Res Function(_$CreatePostModelImpl) then) =
      __$$CreatePostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      String type,
      List<String> tags,
      int maxParticipants,
      DateTime deadline});
}

/// @nodoc
class __$$CreatePostModelImplCopyWithImpl<$Res>
    extends _$CreatePostModelCopyWithImpl<$Res, _$CreatePostModelImpl>
    implements _$$CreatePostModelImplCopyWith<$Res> {
  __$$CreatePostModelImplCopyWithImpl(
      _$CreatePostModelImpl _value, $Res Function(_$CreatePostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreatePostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? tags = null,
    Object? maxParticipants = null,
    Object? deadline = null,
  }) {
    return _then(_$CreatePostModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxParticipants: null == maxParticipants
          ? _value.maxParticipants
          : maxParticipants // ignore: cast_nullable_to_non_nullable
              as int,
      deadline: null == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreatePostModelImpl implements _CreatePostModel {
  const _$CreatePostModelImpl(
      {required this.title,
      required this.content,
      required this.type,
      final List<String> tags = const [],
      required this.maxParticipants,
      required this.deadline})
      : _tags = tags;

  factory _$CreatePostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreatePostModelImplFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final String type;
  final List<String> _tags;
  @override
  @JsonKey()
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final int maxParticipants;
  @override
  final DateTime deadline;

  @override
  String toString() {
    return 'CreatePostModel(title: $title, content: $content, type: $type, tags: $tags, maxParticipants: $maxParticipants, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePostModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.maxParticipants, maxParticipants) ||
                other.maxParticipants == maxParticipants) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, type,
      const DeepCollectionEquality().hash(_tags), maxParticipants, deadline);

  /// Create a copy of CreatePostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostModelImplCopyWith<_$CreatePostModelImpl> get copyWith =>
      __$$CreatePostModelImplCopyWithImpl<_$CreatePostModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreatePostModelImplToJson(
      this,
    );
  }
}

abstract class _CreatePostModel implements CreatePostModel {
  const factory _CreatePostModel(
      {required final String title,
      required final String content,
      required final String type,
      final List<String> tags,
      required final int maxParticipants,
      required final DateTime deadline}) = _$CreatePostModelImpl;

  factory _CreatePostModel.fromJson(Map<String, dynamic> json) =
      _$CreatePostModelImpl.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  String get type;
  @override
  List<String> get tags;
  @override
  int get maxParticipants;
  @override
  DateTime get deadline;

  /// Create a copy of CreatePostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreatePostModelImplCopyWith<_$CreatePostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
