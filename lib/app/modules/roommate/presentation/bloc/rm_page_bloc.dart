import 'package:boggle_flutter/app/modules/post/data/model/post_list_model.dart';
import 'package:boggle_flutter/app/modules/post/domain/repositories/post_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'rm_page_bloc.freezed.dart';

@freezed
abstract class RMPageEvent with _$RMPageEvent {
  const factory RMPageEvent.load() = LoadEvent; // 'Load' 이벤트를 정의
}

// --- State 정의 ---
@freezed
abstract class RMPageState with _$RMPageState {
  const factory RMPageState.init() = InitState; // 초기 상태
  const factory RMPageState.loading() = LoadingState; // 로딩 중 상태
  const factory RMPageState.loaded() = LoadedState; // 성공 상태 (데이터 포함)
  const factory RMPageState.error({required String message}) =
      ErrorState; // 에러 상태 (메시지 포함)
}

@injectable
class RMPageBloc extends Bloc<RMPageEvent, RMPageState> {
  //final PostRepository _postRepository;
  // 초기 상태를 StateInit()으로 설정
  RMPageBloc(PostRepository postRepository)
      : //_postRepository = postRepository,
        super(const RMPageState.init()) {
    // 'LoadEvent'가 들어왔을 때 실행할 로직을 등록
    on<LoadEvent>(_onLoad);
  }
  // onLoad 메소드 정의
  Future<void> _onLoad(LoadEvent event, Emitter<RMPageState> emit) async {
    try {
      // 1. 로딩 상태로 변경하여 UI에 로딩 인디케이터를 표시하도록 함
      emit(const RMPageState.loading());

      // 2. 데이터 로딩 (실제로는 API 호출
      // 여기서는 2초 지연으로 API 호출을 흉내 냅니다.
      await Future.delayed(const Duration(seconds: 2));
      //final results = await _postRepository.getPosts("ALL", 0, 32);

      // 3. 성공 상태로 변경하고, 로드된 데이터를 함께 전달
      emit(RMPageState.loaded());
    } catch (e) {
      // 4. 에러 발생 시 에러 상태로 변경하고, 에러 메시지를 전달
      emit(RMPageState.error(message: '데이터를 불러오는 데 실패했습니다: $e'));
    }
  }
}
