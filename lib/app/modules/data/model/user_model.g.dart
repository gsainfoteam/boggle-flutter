// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserModel _$UserModelFromJson(Map<String, dynamic> json) => _UserModel(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      email: json['email'] as String?,
      password: json['password'] as String?,
      studentId: json['studentId'] as String?,
      major: json['major'] as String?,
    );

Map<String, dynamic> _$UserModelToJson(_UserModel instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'studentId': instance.studentId,
      'major': instance.major,
    };
