// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_request_with_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenRequestWithCodeModelImpl _$$TokenRequestWithCodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenRequestWithCodeModelImpl(
      grantType: json['grant_type'] as String? ?? 'authorization_code',
      code: json['code'] as String,
      codeVerifier: json['code_verifier'] as String,
      clientId: json['client_id'] as String,
      clientSecret: json['client_secret'] as String,
    );

Map<String, dynamic> _$$TokenRequestWithCodeModelImplToJson(
        _$TokenRequestWithCodeModelImpl instance) =>
    <String, dynamic>{
      'grant_type': instance.grantType,
      'code': instance.code,
      'code_verifier': instance.codeVerifier,
      'client_id': instance.clientId,
      'client_secret': instance.clientSecret,
    };
