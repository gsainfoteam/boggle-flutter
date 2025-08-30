import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
//import 'package:boggle_flutter/app/modules/data/model/post_list_image_model.dart';

part 'rm_model.freezed.dart';
part 'rm_model.g.dart';

@freezed
class RMModel with _$RMModel {
  const factory RMModel({
    required int age,
    required String gender,
    required String grade,
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
    required int rmAge,
    required String rmGrade,
    DateTime? rmSleepTime,
    DateTime? rmWakeUpTime,
    bool? rmRefrigerator,
    bool? rmWifi,
    required bool rmSnoring,
    required bool rmSmoking,
    required bool rmGrindingTeeth,
    //required String rmMbti,
  }) = _RMModel;

  factory RMModel.fromJson(Map<String, dynamic> json) =>
      _$RMModelFromJson(json);
}
