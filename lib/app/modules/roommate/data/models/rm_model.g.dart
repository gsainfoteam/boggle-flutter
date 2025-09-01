// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rm_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RMModelImpl _$$RMModelImplFromJson(Map<String, dynamic> json) =>
    _$RMModelImpl(
      gender: json['gender'] as String,
      grade: json['grade'] as String,
      age: (json['age'] as num).toInt(),
      room: json['room'] as String?,
      semester: json['semester'] as String,
      refrigerator: json['refrigerator'] as bool,
      wifi: json['wifi'] as bool,
      snoring: json['snoring'] as bool,
      grindingTeeth: json['grindingTeeth'] as bool,
      smoking: json['smoking'] as bool,
      sleepTime: json['sleepTime'] == null
          ? null
          : DateTime.parse(json['sleepTime'] as String),
      wakeUpTime: json['wakeUpTime'] == null
          ? null
          : DateTime.parse(json['wakeUpTime'] as String),
      mbti: json['mbti'] as String?,
      rmRefrigerator: json['rmRefrigerator'] as bool,
      rmWifi: json['rmWifi'] as bool,
      rmSnoring: json['rmSnoring'] as bool,
      rmSmoking: json['rmSmoking'] as bool,
      rmMbti: json['rmMbti'] as String,
    );

Map<String, dynamic> _$$RMModelImplToJson(_$RMModelImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'grade': instance.grade,
      'age': instance.age,
      'room': instance.room,
      'semester': instance.semester,
      'refrigerator': instance.refrigerator,
      'wifi': instance.wifi,
      'snoring': instance.snoring,
      'grindingTeeth': instance.grindingTeeth,
      'smoking': instance.smoking,
      'sleepTime': instance.sleepTime?.toIso8601String(),
      'wakeUpTime': instance.wakeUpTime?.toIso8601String(),
      'mbti': instance.mbti,
      'rmRefrigerator': instance.rmRefrigerator,
      'rmWifi': instance.rmWifi,
      'rmSnoring': instance.rmSnoring,
      'rmSmoking': instance.rmSmoking,
      'rmMbti': instance.rmMbti,
    };
