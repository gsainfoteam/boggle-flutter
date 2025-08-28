// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryPageEvent {
  String get categoryValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryValue) categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryValue)? categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryValue)? categorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategorySelectedEvent value) categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategorySelectedEvent value)? categorySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategorySelectedEvent value)? categorySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CategoryPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryPageEventCopyWith<CategoryPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryPageEventCopyWith<$Res> {
  factory $CategoryPageEventCopyWith(
          CategoryPageEvent value, $Res Function(CategoryPageEvent) then) =
      _$CategoryPageEventCopyWithImpl<$Res, CategoryPageEvent>;
  @useResult
  $Res call({String categoryValue});
}

/// @nodoc
class _$CategoryPageEventCopyWithImpl<$Res, $Val extends CategoryPageEvent>
    implements $CategoryPageEventCopyWith<$Res> {
  _$CategoryPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryValue = null,
  }) {
    return _then(_value.copyWith(
      categoryValue: null == categoryValue
          ? _value.categoryValue
          : categoryValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategorySelectedEventImplCopyWith<$Res>
    implements $CategoryPageEventCopyWith<$Res> {
  factory _$$CategorySelectedEventImplCopyWith(
          _$CategorySelectedEventImpl value,
          $Res Function(_$CategorySelectedEventImpl) then) =
      __$$CategorySelectedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String categoryValue});
}

/// @nodoc
class __$$CategorySelectedEventImplCopyWithImpl<$Res>
    extends _$CategoryPageEventCopyWithImpl<$Res, _$CategorySelectedEventImpl>
    implements _$$CategorySelectedEventImplCopyWith<$Res> {
  __$$CategorySelectedEventImplCopyWithImpl(_$CategorySelectedEventImpl _value,
      $Res Function(_$CategorySelectedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryValue = null,
  }) {
    return _then(_$CategorySelectedEventImpl(
      categoryValue: null == categoryValue
          ? _value.categoryValue
          : categoryValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategorySelectedEventImpl implements CategorySelectedEvent {
  const _$CategorySelectedEventImpl({required this.categoryValue});

  @override
  final String categoryValue;

  @override
  String toString() {
    return 'CategoryPageEvent.categorySelected(categoryValue: $categoryValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorySelectedEventImpl &&
            (identical(other.categoryValue, categoryValue) ||
                other.categoryValue == categoryValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryValue);

  /// Create a copy of CategoryPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorySelectedEventImplCopyWith<_$CategorySelectedEventImpl>
      get copyWith => __$$CategorySelectedEventImplCopyWithImpl<
          _$CategorySelectedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String categoryValue) categorySelected,
  }) {
    return categorySelected(categoryValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String categoryValue)? categorySelected,
  }) {
    return categorySelected?.call(categoryValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String categoryValue)? categorySelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(categoryValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategorySelectedEvent value) categorySelected,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategorySelectedEvent value)? categorySelected,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategorySelectedEvent value)? categorySelected,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class CategorySelectedEvent implements CategoryPageEvent {
  const factory CategorySelectedEvent({required final String categoryValue}) =
      _$CategorySelectedEventImpl;

  @override
  String get categoryValue;

  /// Create a copy of CategoryPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategorySelectedEventImplCopyWith<_$CategorySelectedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CategoryPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String categoryValue) navigateToPosts,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String categoryValue)? navigateToPosts,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String categoryValue)? navigateToPosts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(NavigateToPostsState value) navigateToPosts,
    required TResult Function(ErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NavigateToPostsState value)? navigateToPosts,
    TResult? Function(ErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(NavigateToPostsState value)? navigateToPosts,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryPageStateCopyWith<$Res> {
  factory $CategoryPageStateCopyWith(
          CategoryPageState value, $Res Function(CategoryPageState) then) =
      _$CategoryPageStateCopyWithImpl<$Res, CategoryPageState>;
}

/// @nodoc
class _$CategoryPageStateCopyWithImpl<$Res, $Val extends CategoryPageState>
    implements $CategoryPageStateCopyWith<$Res> {
  _$CategoryPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitStateImplCopyWith<$Res> {
  factory _$$InitStateImplCopyWith(
          _$InitStateImpl value, $Res Function(_$InitStateImpl) then) =
      __$$InitStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitStateImplCopyWithImpl<$Res>
    extends _$CategoryPageStateCopyWithImpl<$Res, _$InitStateImpl>
    implements _$$InitStateImplCopyWith<$Res> {
  __$$InitStateImplCopyWithImpl(
      _$InitStateImpl _value, $Res Function(_$InitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitStateImpl implements InitState {
  const _$InitStateImpl();

  @override
  String toString() {
    return 'CategoryPageState.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String categoryValue) navigateToPosts,
    required TResult Function(String message) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String categoryValue)? navigateToPosts,
    TResult? Function(String message)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String categoryValue)? navigateToPosts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(NavigateToPostsState value) navigateToPosts,
    required TResult Function(ErrorState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NavigateToPostsState value)? navigateToPosts,
    TResult? Function(ErrorState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(NavigateToPostsState value)? navigateToPosts,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitState implements CategoryPageState {
  const factory InitState() = _$InitStateImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$CategoryPageStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'CategoryPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String categoryValue) navigateToPosts,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String categoryValue)? navigateToPosts,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String categoryValue)? navigateToPosts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(NavigateToPostsState value) navigateToPosts,
    required TResult Function(ErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NavigateToPostsState value)? navigateToPosts,
    TResult? Function(ErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(NavigateToPostsState value)? navigateToPosts,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements CategoryPageState {
  const factory LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$NavigateToPostsStateImplCopyWith<$Res> {
  factory _$$NavigateToPostsStateImplCopyWith(_$NavigateToPostsStateImpl value,
          $Res Function(_$NavigateToPostsStateImpl) then) =
      __$$NavigateToPostsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String categoryValue});
}

/// @nodoc
class __$$NavigateToPostsStateImplCopyWithImpl<$Res>
    extends _$CategoryPageStateCopyWithImpl<$Res, _$NavigateToPostsStateImpl>
    implements _$$NavigateToPostsStateImplCopyWith<$Res> {
  __$$NavigateToPostsStateImplCopyWithImpl(_$NavigateToPostsStateImpl _value,
      $Res Function(_$NavigateToPostsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryValue = null,
  }) {
    return _then(_$NavigateToPostsStateImpl(
      categoryValue: null == categoryValue
          ? _value.categoryValue
          : categoryValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NavigateToPostsStateImpl implements NavigateToPostsState {
  const _$NavigateToPostsStateImpl({required this.categoryValue});

  @override
  final String categoryValue;

  @override
  String toString() {
    return 'CategoryPageState.navigateToPosts(categoryValue: $categoryValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NavigateToPostsStateImpl &&
            (identical(other.categoryValue, categoryValue) ||
                other.categoryValue == categoryValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryValue);

  /// Create a copy of CategoryPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NavigateToPostsStateImplCopyWith<_$NavigateToPostsStateImpl>
      get copyWith =>
          __$$NavigateToPostsStateImplCopyWithImpl<_$NavigateToPostsStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String categoryValue) navigateToPosts,
    required TResult Function(String message) error,
  }) {
    return navigateToPosts(categoryValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String categoryValue)? navigateToPosts,
    TResult? Function(String message)? error,
  }) {
    return navigateToPosts?.call(categoryValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String categoryValue)? navigateToPosts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (navigateToPosts != null) {
      return navigateToPosts(categoryValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(NavigateToPostsState value) navigateToPosts,
    required TResult Function(ErrorState value) error,
  }) {
    return navigateToPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NavigateToPostsState value)? navigateToPosts,
    TResult? Function(ErrorState value)? error,
  }) {
    return navigateToPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(NavigateToPostsState value)? navigateToPosts,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (navigateToPosts != null) {
      return navigateToPosts(this);
    }
    return orElse();
  }
}

abstract class NavigateToPostsState implements CategoryPageState {
  const factory NavigateToPostsState({required final String categoryValue}) =
      _$NavigateToPostsStateImpl;

  String get categoryValue;

  /// Create a copy of CategoryPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NavigateToPostsStateImplCopyWith<_$NavigateToPostsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorStateImplCopyWith<$Res> {
  factory _$$ErrorStateImplCopyWith(
          _$ErrorStateImpl value, $Res Function(_$ErrorStateImpl) then) =
      __$$ErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorStateImplCopyWithImpl<$Res>
    extends _$CategoryPageStateCopyWithImpl<$Res, _$ErrorStateImpl>
    implements _$$ErrorStateImplCopyWith<$Res> {
  __$$ErrorStateImplCopyWithImpl(
      _$ErrorStateImpl _value, $Res Function(_$ErrorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorStateImpl implements ErrorState {
  const _$ErrorStateImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CategoryPageState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CategoryPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      __$$ErrorStateImplCopyWithImpl<_$ErrorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String categoryValue) navigateToPosts,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String categoryValue)? navigateToPosts,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String categoryValue)? navigateToPosts,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitState value) init,
    required TResult Function(LoadingState value) loading,
    required TResult Function(NavigateToPostsState value) navigateToPosts,
    required TResult Function(ErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitState value)? init,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(NavigateToPostsState value)? navigateToPosts,
    TResult? Function(ErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitState value)? init,
    TResult Function(LoadingState value)? loading,
    TResult Function(NavigateToPostsState value)? navigateToPosts,
    TResult Function(ErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState implements CategoryPageState {
  const factory ErrorState({required final String message}) = _$ErrorStateImpl;

  String get message;

  /// Create a copy of CategoryPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorStateImplCopyWith<_$ErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
