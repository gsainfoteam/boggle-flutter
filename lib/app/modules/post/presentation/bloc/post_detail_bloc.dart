import 'package:boggle_flutter/app/modules/post/data/model/post_model.dart';
import 'package:boggle_flutter/app/modules/post/domain/repositories/post_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'post_detail_bloc.freezed.dart';

// --- Event 정의 ---
@freezed
abstract class PostDetailEvent with _$PostDetailEvent {
  const factory PostDetailEvent.fetch({required String postId}) = _Fetch;
}

// --- State 정의 ---
@freezed
abstract class PostDetailState with _$PostDetailState {
  const factory PostDetailState.loading() = _Loading;
  // 'loaded' 상태가 단일 PostModel을 갖도록 수정
  const factory PostDetailState.loaded({required PostModel post}) = _Loaded;
  const factory PostDetailState.error({required String message}) = _Error;
}

// --- BLoC 로직 --
@injectable
class PostDetailBloc extends Bloc<PostDetailEvent, PostDetailState> {
  final PostRepository _postRepository;

  // 초기 상태를 loading으로 설정
  PostDetailBloc(this._postRepository)
      : super(const PostDetailState.loading()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(_Fetch event, Emitter<PostDetailState> emit) async {
    // 이벤트 핸들러 시작 시 로딩 상태를 다시 emit할 필요는 없습니다.
    // BLoC의 초기 상태가 이미 loading이기 때문입니다.
    try {
      // Repository에서 getSinglePost를 호출하고 postId를 전달
      final result = await _postRepository.getSinglePost(event.postId);

      // 성공 시 loaded 상태와 함께 단일 post 데이터를 전달
      emit(PostDetailState.loaded(post: result));
    } catch (e) {
      emit(PostDetailState.error(message: '데이터를 불러오는 데 실패했습니다: $e'));
    }
  }
}
