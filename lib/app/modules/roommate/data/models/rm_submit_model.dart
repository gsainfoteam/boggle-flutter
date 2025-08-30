import 'package:freezed_annotation/freezed_annotation.dart';

part 'rm_submit_model.freezed.dart';

@freezed
class RMSubmitModel with _$RMSubmitModel {
  const factory RMSubmitModel({
    @Default(false) bool gender,
    @Default(false) bool grade,
    @Default(false) bool age,
    @Default(false) bool semester,
    @Default(false) bool refrigerator,
    @Default(false) bool wifi,
    @Default(false) bool snoring,
    @Default(false) bool grindingTeeth,
    @Default(false) bool smoking,
    @Default(false) bool sleepTime,
    @Default(false) bool wakeUpTime,
    @Default(false) bool mbti,
    @Default(false) bool rmRefrigerator,
    @Default(false) bool rmWifi,
    @Default(false) bool rmSnoring,
    @Default(false) bool rmSmoking,
    @Default(false) bool rmMbti,
    @Default(false) bool room,
    @Default(false) bool title,
    @Default(false) bool content,
  }) = _RMSubmitModel;
}
