// make_rm_page_bloc.dart

import 'package:boggle_flutter/app/modules/roommate/data/models/rm_submit_model.dart';
import 'package:boggle_flutter/app/modules/roommate/domain/entities/rm_entity.dart';
import 'package:boggle_flutter/app/modules/roommate/domain/repositories/rm_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'make_rm_page_bloc.freezed.dart';

// --- event 정의 ---
@freezed
abstract class MakeRMPageEvent with _$MakeRMPageEvent {
  const factory MakeRMPageEvent.next() = NextEvent;
  const factory MakeRMPageEvent.previous() = PreviousEvent;
  const factory MakeRMPageEvent.submit() = SubmitEvent;
  const factory MakeRMPageEvent.formDataChanged(
      RMEntity newFormData, RMSubmitModel submit) = FormDataChanged;
}

// --- state 정의 -
enum SubmitStatus { initial, inProgress, success, failure }

@freezed
abstract class MakeRMPageState with _$MakeRMPageState {
  const factory MakeRMPageState({
    @Default(1) int currentStep,
    @Default(10) int totalSteps,
    required RMEntity formData,
    required RMSubmitModel submit,
    @Default(SubmitStatus.initial) SubmitStatus submissionStatus,
    String? errorMessage,
  }) = _MakeRMPageState;
}

// --- BLoC 로직 ---
@injectable
class MakeRMPageBloc extends Bloc<MakeRMPageEvent, MakeRMPageState> {
  final RMRepository _rmRepository;

  MakeRMPageBloc(this._rmRepository)
      : super(MakeRMPageState(
          // state 안에서 관리하기 위함.
          formData: const RMEntity(
            gender: '',
            grade: '',
            age: 0,
            semester: '',
            refrigerator: false,
            wifi: false,
            snoring: false,
            grindingTeeth: false,
            smoking: false,
            rmGrade: '',
            rmAge: 0,
            rmGrindingTeeth: false,
            //rmMbti: '',
            //rmRefrigerator: false,
            rmSmoking: false,
            rmSnoring: false,
            //rmWifi: false,
            room: '',
            title: '',
          ),
          submit: const RMSubmitModel(),
        )) {
    on<NextEvent>(_onNext);
    on<PreviousEvent>(_onPrevious);
    on<SubmitEvent>(_onSubmit);
    on<FormDataChanged>(_onFormDataChanged);
  }

  void _onNext(NextEvent event, Emitter<MakeRMPageState> emit) {
    if (state.currentStep < state.totalSteps) {
      emit(state.copyWith(currentStep: state.currentStep + 1));
    }
  }

  void _onPrevious(PreviousEvent event, Emitter<MakeRMPageState> emit) {
    if (state.currentStep > 1) {
      emit(state.copyWith(currentStep: state.currentStep - 1));
    }
  }

  // 5. formData를 업데이트하는 단일 핸들러
  void _onFormDataChanged(
      FormDataChanged event, Emitter<MakeRMPageState> emit) {
    // formData와 submit 상태를 모두 업데이트하도록 수정
    emit(state.copyWith(
      formData: event.newFormData,
      submit: event.submit,
    ));
  }

  Future<void> _onSubmit(
      SubmitEvent event, Emitter<MakeRMPageState> emit) async {
    emit(state.copyWith(submissionStatus: SubmitStatus.inProgress));
    try {
      final body = state.formData.toJson();

      await _rmRepository.postRM(body);

      emit(state.copyWith(
        submissionStatus: SubmitStatus.success,
        currentStep: state.totalSteps + 1,
      ));
    } catch (e) {
      emit(state.copyWith(
        submissionStatus: SubmitStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
