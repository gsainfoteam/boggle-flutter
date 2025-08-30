// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'make_rm_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MakeRMPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function() submit,
    required TResult Function(RMEntity newFormData, RMSubmitModel submit)
        formDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function()? submit,
    TResult? Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function()? submit,
    TResult Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextEvent value) next,
    required TResult Function(PreviousEvent value) previous,
    required TResult Function(SubmitEvent value) submit,
    required TResult Function(FormDataChanged value) formDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextEvent value)? next,
    TResult? Function(PreviousEvent value)? previous,
    TResult? Function(SubmitEvent value)? submit,
    TResult? Function(FormDataChanged value)? formDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextEvent value)? next,
    TResult Function(PreviousEvent value)? previous,
    TResult Function(SubmitEvent value)? submit,
    TResult Function(FormDataChanged value)? formDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeRMPageEventCopyWith<$Res> {
  factory $MakeRMPageEventCopyWith(
          MakeRMPageEvent value, $Res Function(MakeRMPageEvent) then) =
      _$MakeRMPageEventCopyWithImpl<$Res, MakeRMPageEvent>;
}

/// @nodoc
class _$MakeRMPageEventCopyWithImpl<$Res, $Val extends MakeRMPageEvent>
    implements $MakeRMPageEventCopyWith<$Res> {
  _$MakeRMPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MakeRMPageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NextEventImplCopyWith<$Res> {
  factory _$$NextEventImplCopyWith(
          _$NextEventImpl value, $Res Function(_$NextEventImpl) then) =
      __$$NextEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextEventImplCopyWithImpl<$Res>
    extends _$MakeRMPageEventCopyWithImpl<$Res, _$NextEventImpl>
    implements _$$NextEventImplCopyWith<$Res> {
  __$$NextEventImplCopyWithImpl(
      _$NextEventImpl _value, $Res Function(_$NextEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MakeRMPageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextEventImpl implements NextEvent {
  const _$NextEventImpl();

  @override
  String toString() {
    return 'MakeRMPageEvent.next()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function() submit,
    required TResult Function(RMEntity newFormData, RMSubmitModel submit)
        formDataChanged,
  }) {
    return next();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function()? submit,
    TResult? Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
  }) {
    return next?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function()? submit,
    TResult Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextEvent value) next,
    required TResult Function(PreviousEvent value) previous,
    required TResult Function(SubmitEvent value) submit,
    required TResult Function(FormDataChanged value) formDataChanged,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextEvent value)? next,
    TResult? Function(PreviousEvent value)? previous,
    TResult? Function(SubmitEvent value)? submit,
    TResult? Function(FormDataChanged value)? formDataChanged,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextEvent value)? next,
    TResult Function(PreviousEvent value)? previous,
    TResult Function(SubmitEvent value)? submit,
    TResult Function(FormDataChanged value)? formDataChanged,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class NextEvent implements MakeRMPageEvent {
  const factory NextEvent() = _$NextEventImpl;
}

/// @nodoc
abstract class _$$PreviousEventImplCopyWith<$Res> {
  factory _$$PreviousEventImplCopyWith(
          _$PreviousEventImpl value, $Res Function(_$PreviousEventImpl) then) =
      __$$PreviousEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviousEventImplCopyWithImpl<$Res>
    extends _$MakeRMPageEventCopyWithImpl<$Res, _$PreviousEventImpl>
    implements _$$PreviousEventImplCopyWith<$Res> {
  __$$PreviousEventImplCopyWithImpl(
      _$PreviousEventImpl _value, $Res Function(_$PreviousEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MakeRMPageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreviousEventImpl implements PreviousEvent {
  const _$PreviousEventImpl();

  @override
  String toString() {
    return 'MakeRMPageEvent.previous()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PreviousEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function() submit,
    required TResult Function(RMEntity newFormData, RMSubmitModel submit)
        formDataChanged,
  }) {
    return previous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function()? submit,
    TResult? Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
  }) {
    return previous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function()? submit,
    TResult Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextEvent value) next,
    required TResult Function(PreviousEvent value) previous,
    required TResult Function(SubmitEvent value) submit,
    required TResult Function(FormDataChanged value) formDataChanged,
  }) {
    return previous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextEvent value)? next,
    TResult? Function(PreviousEvent value)? previous,
    TResult? Function(SubmitEvent value)? submit,
    TResult? Function(FormDataChanged value)? formDataChanged,
  }) {
    return previous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextEvent value)? next,
    TResult Function(PreviousEvent value)? previous,
    TResult Function(SubmitEvent value)? submit,
    TResult Function(FormDataChanged value)? formDataChanged,
    required TResult orElse(),
  }) {
    if (previous != null) {
      return previous(this);
    }
    return orElse();
  }
}

abstract class PreviousEvent implements MakeRMPageEvent {
  const factory PreviousEvent() = _$PreviousEventImpl;
}

/// @nodoc
abstract class _$$SubmitEventImplCopyWith<$Res> {
  factory _$$SubmitEventImplCopyWith(
          _$SubmitEventImpl value, $Res Function(_$SubmitEventImpl) then) =
      __$$SubmitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitEventImplCopyWithImpl<$Res>
    extends _$MakeRMPageEventCopyWithImpl<$Res, _$SubmitEventImpl>
    implements _$$SubmitEventImplCopyWith<$Res> {
  __$$SubmitEventImplCopyWithImpl(
      _$SubmitEventImpl _value, $Res Function(_$SubmitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MakeRMPageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubmitEventImpl implements SubmitEvent {
  const _$SubmitEventImpl();

  @override
  String toString() {
    return 'MakeRMPageEvent.submit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function() submit,
    required TResult Function(RMEntity newFormData, RMSubmitModel submit)
        formDataChanged,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function()? submit,
    TResult? Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function()? submit,
    TResult Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextEvent value) next,
    required TResult Function(PreviousEvent value) previous,
    required TResult Function(SubmitEvent value) submit,
    required TResult Function(FormDataChanged value) formDataChanged,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextEvent value)? next,
    TResult? Function(PreviousEvent value)? previous,
    TResult? Function(SubmitEvent value)? submit,
    TResult? Function(FormDataChanged value)? formDataChanged,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextEvent value)? next,
    TResult Function(PreviousEvent value)? previous,
    TResult Function(SubmitEvent value)? submit,
    TResult Function(FormDataChanged value)? formDataChanged,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class SubmitEvent implements MakeRMPageEvent {
  const factory SubmitEvent() = _$SubmitEventImpl;
}

/// @nodoc
abstract class _$$FormDataChangedImplCopyWith<$Res> {
  factory _$$FormDataChangedImplCopyWith(_$FormDataChangedImpl value,
          $Res Function(_$FormDataChangedImpl) then) =
      __$$FormDataChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RMEntity newFormData, RMSubmitModel submit});

  $RMEntityCopyWith<$Res> get newFormData;
  $RMSubmitModelCopyWith<$Res> get submit;
}

/// @nodoc
class __$$FormDataChangedImplCopyWithImpl<$Res>
    extends _$MakeRMPageEventCopyWithImpl<$Res, _$FormDataChangedImpl>
    implements _$$FormDataChangedImplCopyWith<$Res> {
  __$$FormDataChangedImplCopyWithImpl(
      _$FormDataChangedImpl _value, $Res Function(_$FormDataChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MakeRMPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newFormData = null,
    Object? submit = null,
  }) {
    return _then(_$FormDataChangedImpl(
      null == newFormData
          ? _value.newFormData
          : newFormData // ignore: cast_nullable_to_non_nullable
              as RMEntity,
      null == submit
          ? _value.submit
          : submit // ignore: cast_nullable_to_non_nullable
              as RMSubmitModel,
    ));
  }

  /// Create a copy of MakeRMPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RMEntityCopyWith<$Res> get newFormData {
    return $RMEntityCopyWith<$Res>(_value.newFormData, (value) {
      return _then(_value.copyWith(newFormData: value));
    });
  }

  /// Create a copy of MakeRMPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RMSubmitModelCopyWith<$Res> get submit {
    return $RMSubmitModelCopyWith<$Res>(_value.submit, (value) {
      return _then(_value.copyWith(submit: value));
    });
  }
}

/// @nodoc

class _$FormDataChangedImpl implements FormDataChanged {
  const _$FormDataChangedImpl(this.newFormData, this.submit);

  @override
  final RMEntity newFormData;
  @override
  final RMSubmitModel submit;

  @override
  String toString() {
    return 'MakeRMPageEvent.formDataChanged(newFormData: $newFormData, submit: $submit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormDataChangedImpl &&
            (identical(other.newFormData, newFormData) ||
                other.newFormData == newFormData) &&
            (identical(other.submit, submit) || other.submit == submit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newFormData, submit);

  /// Create a copy of MakeRMPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormDataChangedImplCopyWith<_$FormDataChangedImpl> get copyWith =>
      __$$FormDataChangedImplCopyWithImpl<_$FormDataChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() next,
    required TResult Function() previous,
    required TResult Function() submit,
    required TResult Function(RMEntity newFormData, RMSubmitModel submit)
        formDataChanged,
  }) {
    return formDataChanged(newFormData, this.submit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? next,
    TResult? Function()? previous,
    TResult? Function()? submit,
    TResult? Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
  }) {
    return formDataChanged?.call(newFormData, this.submit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? next,
    TResult Function()? previous,
    TResult Function()? submit,
    TResult Function(RMEntity newFormData, RMSubmitModel submit)?
        formDataChanged,
    required TResult orElse(),
  }) {
    if (formDataChanged != null) {
      return formDataChanged(newFormData, this.submit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextEvent value) next,
    required TResult Function(PreviousEvent value) previous,
    required TResult Function(SubmitEvent value) submit,
    required TResult Function(FormDataChanged value) formDataChanged,
  }) {
    return formDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NextEvent value)? next,
    TResult? Function(PreviousEvent value)? previous,
    TResult? Function(SubmitEvent value)? submit,
    TResult? Function(FormDataChanged value)? formDataChanged,
  }) {
    return formDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextEvent value)? next,
    TResult Function(PreviousEvent value)? previous,
    TResult Function(SubmitEvent value)? submit,
    TResult Function(FormDataChanged value)? formDataChanged,
    required TResult orElse(),
  }) {
    if (formDataChanged != null) {
      return formDataChanged(this);
    }
    return orElse();
  }
}

abstract class FormDataChanged implements MakeRMPageEvent {
  const factory FormDataChanged(
          final RMEntity newFormData, final RMSubmitModel submit) =
      _$FormDataChangedImpl;

  RMEntity get newFormData;
  RMSubmitModel get submit;

  /// Create a copy of MakeRMPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormDataChangedImplCopyWith<_$FormDataChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MakeRMPageState {
  int get currentStep => throw _privateConstructorUsedError;
  int get totalSteps => throw _privateConstructorUsedError;
  RMEntity get formData => throw _privateConstructorUsedError;
  RMSubmitModel get submit => throw _privateConstructorUsedError;
  SubmitStatus get submissionStatus => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of MakeRMPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MakeRMPageStateCopyWith<MakeRMPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeRMPageStateCopyWith<$Res> {
  factory $MakeRMPageStateCopyWith(
          MakeRMPageState value, $Res Function(MakeRMPageState) then) =
      _$MakeRMPageStateCopyWithImpl<$Res, MakeRMPageState>;
  @useResult
  $Res call(
      {int currentStep,
      int totalSteps,
      RMEntity formData,
      RMSubmitModel submit,
      SubmitStatus submissionStatus,
      String? errorMessage});

  $RMEntityCopyWith<$Res> get formData;
  $RMSubmitModelCopyWith<$Res> get submit;
}

/// @nodoc
class _$MakeRMPageStateCopyWithImpl<$Res, $Val extends MakeRMPageState>
    implements $MakeRMPageStateCopyWith<$Res> {
  _$MakeRMPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MakeRMPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? totalSteps = null,
    Object? formData = null,
    Object? submit = null,
    Object? submissionStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as RMEntity,
      submit: null == submit
          ? _value.submit
          : submit // ignore: cast_nullable_to_non_nullable
              as RMSubmitModel,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as SubmitStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of MakeRMPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RMEntityCopyWith<$Res> get formData {
    return $RMEntityCopyWith<$Res>(_value.formData, (value) {
      return _then(_value.copyWith(formData: value) as $Val);
    });
  }

  /// Create a copy of MakeRMPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RMSubmitModelCopyWith<$Res> get submit {
    return $RMSubmitModelCopyWith<$Res>(_value.submit, (value) {
      return _then(_value.copyWith(submit: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MakeRMPageStateImplCopyWith<$Res>
    implements $MakeRMPageStateCopyWith<$Res> {
  factory _$$MakeRMPageStateImplCopyWith(_$MakeRMPageStateImpl value,
          $Res Function(_$MakeRMPageStateImpl) then) =
      __$$MakeRMPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentStep,
      int totalSteps,
      RMEntity formData,
      RMSubmitModel submit,
      SubmitStatus submissionStatus,
      String? errorMessage});

  @override
  $RMEntityCopyWith<$Res> get formData;
  @override
  $RMSubmitModelCopyWith<$Res> get submit;
}

/// @nodoc
class __$$MakeRMPageStateImplCopyWithImpl<$Res>
    extends _$MakeRMPageStateCopyWithImpl<$Res, _$MakeRMPageStateImpl>
    implements _$$MakeRMPageStateImplCopyWith<$Res> {
  __$$MakeRMPageStateImplCopyWithImpl(
      _$MakeRMPageStateImpl _value, $Res Function(_$MakeRMPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MakeRMPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentStep = null,
    Object? totalSteps = null,
    Object? formData = null,
    Object? submit = null,
    Object? submissionStatus = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$MakeRMPageStateImpl(
      currentStep: null == currentStep
          ? _value.currentStep
          : currentStep // ignore: cast_nullable_to_non_nullable
              as int,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as RMEntity,
      submit: null == submit
          ? _value.submit
          : submit // ignore: cast_nullable_to_non_nullable
              as RMSubmitModel,
      submissionStatus: null == submissionStatus
          ? _value.submissionStatus
          : submissionStatus // ignore: cast_nullable_to_non_nullable
              as SubmitStatus,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MakeRMPageStateImpl implements _MakeRMPageState {
  const _$MakeRMPageStateImpl(
      {this.currentStep = 1,
      this.totalSteps = 10,
      required this.formData,
      required this.submit,
      this.submissionStatus = SubmitStatus.initial,
      this.errorMessage});

  @override
  @JsonKey()
  final int currentStep;
  @override
  @JsonKey()
  final int totalSteps;
  @override
  final RMEntity formData;
  @override
  final RMSubmitModel submit;
  @override
  @JsonKey()
  final SubmitStatus submissionStatus;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'MakeRMPageState(currentStep: $currentStep, totalSteps: $totalSteps, formData: $formData, submit: $submit, submissionStatus: $submissionStatus, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakeRMPageStateImpl &&
            (identical(other.currentStep, currentStep) ||
                other.currentStep == currentStep) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.formData, formData) ||
                other.formData == formData) &&
            (identical(other.submit, submit) || other.submit == submit) &&
            (identical(other.submissionStatus, submissionStatus) ||
                other.submissionStatus == submissionStatus) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentStep, totalSteps,
      formData, submit, submissionStatus, errorMessage);

  /// Create a copy of MakeRMPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakeRMPageStateImplCopyWith<_$MakeRMPageStateImpl> get copyWith =>
      __$$MakeRMPageStateImplCopyWithImpl<_$MakeRMPageStateImpl>(
          this, _$identity);
}

abstract class _MakeRMPageState implements MakeRMPageState {
  const factory _MakeRMPageState(
      {final int currentStep,
      final int totalSteps,
      required final RMEntity formData,
      required final RMSubmitModel submit,
      final SubmitStatus submissionStatus,
      final String? errorMessage}) = _$MakeRMPageStateImpl;

  @override
  int get currentStep;
  @override
  int get totalSteps;
  @override
  RMEntity get formData;
  @override
  RMSubmitModel get submit;
  @override
  SubmitStatus get submissionStatus;
  @override
  String? get errorMessage;

  /// Create a copy of MakeRMPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakeRMPageStateImplCopyWith<_$MakeRMPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
