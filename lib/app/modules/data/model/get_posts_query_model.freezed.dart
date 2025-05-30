// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_query_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPostsQueryModel {
  int? get offset =>
      throw _privateConstructorUsedError; // offset : 몇 번째 공지부터 가져올지 지정하는 인덱스 ex. 0은 첫 공지, 10은 11번째 공지부터 조회
  int? get limit =>
      throw _privateConstructorUsedError; // limit : 한 번에 몇 개의 공지를 가져올지 지정 ex. 20이면 최대 20개 공지 응답
  String? get search =>
      throw _privateConstructorUsedError; // search : 공지 제목이나 내용에서 특정 단어를 포함한 공지만 필터링
  List<String>? get tags =>
      throw _privateConstructorUsedError; // tags : 공지에 지정된 태그들 중 하나 이상 포함된 공지를 검색할 때 사용
  NoticeMy? get my =>
      throw _privateConstructorUsedError; // my : 내가 작성한 공지, 내가 참여한 공지 등 개인화 필터링용
  NoticeCategory? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'group-id')
  String? get groupId => throw _privateConstructorUsedError;

  /// Serializes this GetPostsQueryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPostsQueryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPostsQueryModelCopyWith<GetPostsQueryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsQueryModelCopyWith<$Res> {
  factory $GetPostsQueryModelCopyWith(
          GetPostsQueryModel value, $Res Function(GetPostsQueryModel) then) =
      _$GetPostsQueryModelCopyWithImpl<$Res, GetPostsQueryModel>;
  @useResult
  $Res call(
      {int? offset,
      int? limit,
      String? search,
      List<String>? tags,
      NoticeMy? my,
      NoticeCategory? category,
      @JsonKey(name: 'group-id') String? groupId});
}

/// @nodoc
class _$GetPostsQueryModelCopyWithImpl<$Res, $Val extends GetPostsQueryModel>
    implements $GetPostsQueryModelCopyWith<$Res> {
  _$GetPostsQueryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPostsQueryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? search = freezed,
    Object? tags = freezed,
    Object? my = freezed,
    Object? category = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_value.copyWith(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      my: freezed == my
          ? _value.my
          : my // ignore: cast_nullable_to_non_nullable
              as NoticeMy?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NoticeCategory?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetPostsQueryModelImplCopyWith<$Res>
    implements $GetPostsQueryModelCopyWith<$Res> {
  factory _$$GetPostsQueryModelImplCopyWith(_$GetPostsQueryModelImpl value,
          $Res Function(_$GetPostsQueryModelImpl) then) =
      __$$GetPostsQueryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? offset,
      int? limit,
      String? search,
      List<String>? tags,
      NoticeMy? my,
      NoticeCategory? category,
      @JsonKey(name: 'group-id') String? groupId});
}

/// @nodoc
class __$$GetPostsQueryModelImplCopyWithImpl<$Res>
    extends _$GetPostsQueryModelCopyWithImpl<$Res, _$GetPostsQueryModelImpl>
    implements _$$GetPostsQueryModelImplCopyWith<$Res> {
  __$$GetPostsQueryModelImplCopyWithImpl(_$GetPostsQueryModelImpl _value,
      $Res Function(_$GetPostsQueryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPostsQueryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
    Object? search = freezed,
    Object? tags = freezed,
    Object? my = freezed,
    Object? category = freezed,
    Object? groupId = freezed,
  }) {
    return _then(_$GetPostsQueryModelImpl(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
      search: freezed == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      my: freezed == my
          ? _value.my
          : my // ignore: cast_nullable_to_non_nullable
              as NoticeMy?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as NoticeCategory?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$GetPostsQueryModelImpl implements _GetPostsQueryModel {
  const _$GetPostsQueryModelImpl(
      {this.offset,
      this.limit,
      this.search,
      final List<String>? tags,
      this.my,
      this.category,
      @JsonKey(name: 'group-id') this.groupId})
      : _tags = tags;

  @override
  final int? offset;
// offset : 몇 번째 공지부터 가져올지 지정하는 인덱스 ex. 0은 첫 공지, 10은 11번째 공지부터 조회
  @override
  final int? limit;
// limit : 한 번에 몇 개의 공지를 가져올지 지정 ex. 20이면 최대 20개 공지 응답
  @override
  final String? search;
// search : 공지 제목이나 내용에서 특정 단어를 포함한 공지만 필터링
  final List<String>? _tags;
// search : 공지 제목이나 내용에서 특정 단어를 포함한 공지만 필터링
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// tags : 공지에 지정된 태그들 중 하나 이상 포함된 공지를 검색할 때 사용
  @override
  final NoticeMy? my;
// my : 내가 작성한 공지, 내가 참여한 공지 등 개인화 필터링용
  @override
  final NoticeCategory? category;
  @override
  @JsonKey(name: 'group-id')
  final String? groupId;

  @override
  String toString() {
    return 'GetPostsQueryModel(offset: $offset, limit: $limit, search: $search, tags: $tags, my: $my, category: $category, groupId: $groupId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsQueryModelImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.search, search) || other.search == search) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.my, my) || other.my == my) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.groupId, groupId) || other.groupId == groupId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit, search,
      const DeepCollectionEquality().hash(_tags), my, category, groupId);

  /// Create a copy of GetPostsQueryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsQueryModelImplCopyWith<_$GetPostsQueryModelImpl> get copyWith =>
      __$$GetPostsQueryModelImplCopyWithImpl<_$GetPostsQueryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPostsQueryModelImplToJson(
      this,
    );
  }
}

abstract class _GetPostsQueryModel implements GetPostsQueryModel {
  const factory _GetPostsQueryModel(
          {final int? offset,
          final int? limit,
          final String? search,
          final List<String>? tags,
          final NoticeMy? my,
          final NoticeCategory? category,
          @JsonKey(name: 'group-id') final String? groupId}) =
      _$GetPostsQueryModelImpl;

  @override
  int?
      get offset; // offset : 몇 번째 공지부터 가져올지 지정하는 인덱스 ex. 0은 첫 공지, 10은 11번째 공지부터 조회
  @override
  int? get limit; // limit : 한 번에 몇 개의 공지를 가져올지 지정 ex. 20이면 최대 20개 공지 응답
  @override
  String? get search; // search : 공지 제목이나 내용에서 특정 단어를 포함한 공지만 필터링
  @override
  List<String>? get tags; // tags : 공지에 지정된 태그들 중 하나 이상 포함된 공지를 검색할 때 사용
  @override
  NoticeMy? get my; // my : 내가 작성한 공지, 내가 참여한 공지 등 개인화 필터링용
  @override
  NoticeCategory? get category;
  @override
  @JsonKey(name: 'group-id')
  String? get groupId;

  /// Create a copy of GetPostsQueryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPostsQueryModelImplCopyWith<_$GetPostsQueryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
