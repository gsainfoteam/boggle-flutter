// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostModel {
  String get uuid;
  String get title;
  String get content;
  String get type;
  List<String> get tags;
  String get author;
  String get authorId;
  List<UserModel> get participants;
  int get maxPaticipants;
  DateTime get createdAt;
  DateTime get deadline;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostModelCopyWith<PostModel> get copyWith =>
      _$PostModelCopyWithImpl<PostModel>(this as PostModel, _$identity);

  /// Serializes this PostModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostModel &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            const DeepCollectionEquality()
                .equals(other.participants, participants) &&
            (identical(other.maxPaticipants, maxPaticipants) ||
                other.maxPaticipants == maxPaticipants) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      title,
      content,
      type,
      const DeepCollectionEquality().hash(tags),
      author,
      authorId,
      const DeepCollectionEquality().hash(participants),
      maxPaticipants,
      createdAt,
      deadline);

  @override
  String toString() {
    return 'PostModel(uuid: $uuid, title: $title, content: $content, type: $type, tags: $tags, author: $author, authorId: $authorId, participants: $participants, maxPaticipants: $maxPaticipants, createdAt: $createdAt, deadline: $deadline)';
  }
}

/// @nodoc
abstract mixin class $PostModelCopyWith<$Res> {
  factory $PostModelCopyWith(PostModel value, $Res Function(PostModel) _then) =
      _$PostModelCopyWithImpl;
  @useResult
  $Res call(
      {String uuid,
      String title,
      String content,
      String type,
      List<String> tags,
      String author,
      String authorId,
      List<UserModel> participants,
      int maxPaticipants,
      DateTime createdAt,
      DateTime deadline});
}

/// @nodoc
class _$PostModelCopyWithImpl<$Res> implements $PostModelCopyWith<$Res> {
  _$PostModelCopyWithImpl(this._self, this._then);

  final PostModel _self;
  final $Res Function(PostModel) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? tags = null,
    Object? author = null,
    Object? authorId = null,
    Object? participants = null,
    Object? maxPaticipants = null,
    Object? createdAt = null,
    Object? deadline = null,
  }) {
    return _then(_self.copyWith(
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _self.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _self.participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      maxPaticipants: null == maxPaticipants
          ? _self.maxPaticipants
          : maxPaticipants // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadline: null == deadline
          ? _self.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PostModel implements PostModel {
  const _PostModel(
      {required this.uuid,
      required this.title,
      required this.content,
      required this.type,
      required final List<String> tags,
      required this.author,
      required this.authorId,
      required final List<UserModel> participants,
      required this.maxPaticipants,
      required this.createdAt,
      required this.deadline})
      : _tags = tags,
        _participants = participants;
  factory _PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);

  @override
  final String uuid;
  @override
  final String title;
  @override
  final String content;
  @override
  final String type;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final String author;
  @override
  final String authorId;
  final List<UserModel> _participants;
  @override
  List<UserModel> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final int maxPaticipants;
  @override
  final DateTime createdAt;
  @override
  final DateTime deadline;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostModelCopyWith<_PostModel> get copyWith =>
      __$PostModelCopyWithImpl<_PostModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostModel &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            const DeepCollectionEquality()
                .equals(other._participants, _participants) &&
            (identical(other.maxPaticipants, maxPaticipants) ||
                other.maxPaticipants == maxPaticipants) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      title,
      content,
      type,
      const DeepCollectionEquality().hash(_tags),
      author,
      authorId,
      const DeepCollectionEquality().hash(_participants),
      maxPaticipants,
      createdAt,
      deadline);

  @override
  String toString() {
    return 'PostModel(uuid: $uuid, title: $title, content: $content, type: $type, tags: $tags, author: $author, authorId: $authorId, participants: $participants, maxPaticipants: $maxPaticipants, createdAt: $createdAt, deadline: $deadline)';
  }
}

/// @nodoc
abstract mixin class _$PostModelCopyWith<$Res>
    implements $PostModelCopyWith<$Res> {
  factory _$PostModelCopyWith(
          _PostModel value, $Res Function(_PostModel) _then) =
      __$PostModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String uuid,
      String title,
      String content,
      String type,
      List<String> tags,
      String author,
      String authorId,
      List<UserModel> participants,
      int maxPaticipants,
      DateTime createdAt,
      DateTime deadline});
}

/// @nodoc
class __$PostModelCopyWithImpl<$Res> implements _$PostModelCopyWith<$Res> {
  __$PostModelCopyWithImpl(this._self, this._then);

  final _PostModel _self;
  final $Res Function(_PostModel) _then;

  /// Create a copy of PostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? uuid = null,
    Object? title = null,
    Object? content = null,
    Object? type = null,
    Object? tags = null,
    Object? author = null,
    Object? authorId = null,
    Object? participants = null,
    Object? maxPaticipants = null,
    Object? createdAt = null,
    Object? deadline = null,
  }) {
    return _then(_PostModel(
      uuid: null == uuid
          ? _self.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      authorId: null == authorId
          ? _self.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String,
      participants: null == participants
          ? _self._participants
          : participants // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
      maxPaticipants: null == maxPaticipants
          ? _self.maxPaticipants
          : maxPaticipants // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deadline: null == deadline
          ? _self.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
