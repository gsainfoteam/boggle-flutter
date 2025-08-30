import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
//import 'package:boggle_flutter/app/modules/data/model/post_list_image_model.dart';

part 'rm_entity.freezed.dart';
part 'rm_entity.g.dart';

@freezed
class RMEntity with _$RMEntity {
  const factory RMEntity({
    required String gender,
    required String grade,
    required int age,
    String? room,
    required String semester,
    required bool refrigerator,
    required bool wifi,
    required bool snoring,
    required bool grindingTeeth,
    required bool smoking,
    DateTime? sleepTime,
    DateTime? wakeUpTime,
    String? mbti,
    required String rmGrade,
    required int rmAge,
    DateTime? rmSleepTime,
    DateTime? rmWakeUpTime,
    required bool rmSnoring,
    required bool rmGrindingTeeth,
    required bool rmSmoking,
    required bool rmRefrigerator,
    required bool rmWifi,
    //required String rmMbti,
    required String title,
    String? content,
  }) = _RMEntity;

  factory RMEntity.fromJson(Map<String, dynamic> json) =>
      _$RMEntityFromJson(json);
}
