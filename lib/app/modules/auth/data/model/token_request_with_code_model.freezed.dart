// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_request_with_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenRequestWithCodeModel _$TokenRequestWithCodeModelFromJson(
    Map<String, dynamic> json) {
  return _TokenRequestWithCodeModel.fromJson(json);
}

/// @nodoc
mixin _$TokenRequestWithCodeModel {
  String get grantType => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get codeVerifier => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get clientSecret => throw _privateConstructorUsedError;

  /// Serializes this TokenRequestWithCodeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenRequestWithCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenRequestWithCodeModelCopyWith<TokenRequestWithCodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenRequestWithCodeModelCopyWith<$Res> {
  factory $TokenRequestWithCodeModelCopyWith(TokenRequestWithCodeModel value,
          $Res Function(TokenRequestWithCodeModel) then) =
      _$TokenRequestWithCodeModelCopyWithImpl<$Res, TokenRequestWithCodeModel>;
  @useResult
  $Res call(
      {String grantType,
      String code,
      String codeVerifier,
      String clientId,
      String clientSecret});
}

/// @nodoc
class _$TokenRequestWithCodeModelCopyWithImpl<$Res,
        $Val extends TokenRequestWithCodeModel>
    implements $TokenRequestWithCodeModelCopyWith<$Res> {
  _$TokenRequestWithCodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenRequestWithCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = null,
    Object? code = null,
    Object? codeVerifier = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_value.copyWith(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      codeVerifier: null == codeVerifier
          ? _value.codeVerifier
          : codeVerifier // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenRequestWithCodeModelImplCopyWith<$Res>
    implements $TokenRequestWithCodeModelCopyWith<$Res> {
  factory _$$TokenRequestWithCodeModelImplCopyWith(
          _$TokenRequestWithCodeModelImpl value,
          $Res Function(_$TokenRequestWithCodeModelImpl) then) =
      __$$TokenRequestWithCodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String grantType,
      String code,
      String codeVerifier,
      String clientId,
      String clientSecret});
}

/// @nodoc
class __$$TokenRequestWithCodeModelImplCopyWithImpl<$Res>
    extends _$TokenRequestWithCodeModelCopyWithImpl<$Res,
        _$TokenRequestWithCodeModelImpl>
    implements _$$TokenRequestWithCodeModelImplCopyWith<$Res> {
  __$$TokenRequestWithCodeModelImplCopyWithImpl(
      _$TokenRequestWithCodeModelImpl _value,
      $Res Function(_$TokenRequestWithCodeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenRequestWithCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grantType = null,
    Object? code = null,
    Object? codeVerifier = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_$TokenRequestWithCodeModelImpl(
      grantType: null == grantType
          ? _value.grantType
          : grantType // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      codeVerifier: null == codeVerifier
          ? _value.codeVerifier
          : codeVerifier // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TokenRequestWithCodeModelImpl implements _TokenRequestWithCodeModel {
  const _$TokenRequestWithCodeModelImpl(
      {this.grantType = 'authorization_code',
      required this.code,
      required this.codeVerifier,
      required this.clientId,
      required this.clientSecret});

  factory _$TokenRequestWithCodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenRequestWithCodeModelImplFromJson(json);

  @override
  @JsonKey()
  final String grantType;
  @override
  final String code;
  @override
  final String codeVerifier;
  @override
  final String clientId;
  @override
  final String clientSecret;

  @override
  String toString() {
    return 'TokenRequestWithCodeModel(grantType: $grantType, code: $code, codeVerifier: $codeVerifier, clientId: $clientId, clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenRequestWithCodeModelImpl &&
            (identical(other.grantType, grantType) ||
                other.grantType == grantType) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.codeVerifier, codeVerifier) ||
                other.codeVerifier == codeVerifier) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, grantType, code, codeVerifier, clientId, clientSecret);

  /// Create a copy of TokenRequestWithCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenRequestWithCodeModelImplCopyWith<_$TokenRequestWithCodeModelImpl>
      get copyWith => __$$TokenRequestWithCodeModelImplCopyWithImpl<
          _$TokenRequestWithCodeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenRequestWithCodeModelImplToJson(
      this,
    );
  }
}

abstract class _TokenRequestWithCodeModel implements TokenRequestWithCodeModel {
  const factory _TokenRequestWithCodeModel(
      {final String grantType,
      required final String code,
      required final String codeVerifier,
      required final String clientId,
      required final String clientSecret}) = _$TokenRequestWithCodeModelImpl;

  factory _TokenRequestWithCodeModel.fromJson(Map<String, dynamic> json) =
      _$TokenRequestWithCodeModelImpl.fromJson;

  @override
  String get grantType;
  @override
  String get code;
  @override
  String get codeVerifier;
  @override
  String get clientId;
  @override
  String get clientSecret;

  /// Create a copy of TokenRequestWithCodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenRequestWithCodeModelImplCopyWith<_$TokenRequestWithCodeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
