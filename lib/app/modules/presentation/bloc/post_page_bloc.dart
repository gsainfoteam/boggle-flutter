import 'package:boggle_flutter/app/modules/data/model/post_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:boggle_flutter/app/modules/data/data_source/post_api.dart';
import 'package:dio/dio.dart';

part 'post_page_bloc.freezed.dart';

final Dio _dio = Dio(BaseOptions(
    baseUrl: 'http://13.125.147.62/api/',
    headers: {'Content-Type': 'application/json'}));

@freezed
abstract class PostPageEvent with _$PostPageEvent {
  const factory PostPageEvent.load() = LoadEvent; // 'Load' 이벤트를 정의
}

// --- State 정의 ---
@freezed
abstract class PostPageState with _$PostPageState {
  const factory PostPageState.init() = InitState; // 초기 상태
  const factory PostPageState.loading() = LoadingState; // 로딩 중 상태
  const factory PostPageState.loaded({required PostListModel items}) =
      LoadedState; // 성공 상태 (데이터 포함)
  const factory PostPageState.error({required String message}) =
      ErrorState; // 에러 상태 (메시지 포함)
}

class PostPageBloc extends Bloc<PostPageEvent, PostPageState> {
  // 초기 상태를 StateInit()으로 설정
  PostPageBloc() : super(const PostPageState.init()) {
    // 'LoadEvent'가 들어왔을 때 실행할 로직을 등록
    on<LoadEvent>(_onLoad);
  }

  Future<void> _onLoad(LoadEvent event, Emitter<PostPageState> emit) async {
    try {
      // 1. 로딩 상태로 변경하여 UI에 로딩 인디케이터를 표시하도록 함
      emit(const PostPageState.loading());

      // 2. 데이터 로딩 (실제로는 API 호출
      // 여기서는 2초 지연으로 API 호출을 흉내 냅니다.
      await Future.delayed(const Duration(seconds: 2));
      final results = await PostApi(_dio).getPosts(); // 실제 API 호출

      // 3. 성공 상태로 변경하고, 로드된 데이터를 함께 전달
      emit(PostPageState.loaded(items: results));
    } catch (e) {
      // 4. 에러 발생 시 에러 상태로 변경하고, 에러 메시지를 전달
      emit(PostPageState.error(message: '데이터를 불러오는 데 실패했습니다: $e'));
    }
  }
}
