// category_page_bloc.dart

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'category_page_bloc.freezed.dart';

// 1. 이벤트 통합
@freezed
abstract class CategoryPageEvent with _$CategoryPageEvent {
  const factory CategoryPageEvent.categorySelected(
      {required String categoryValue}) = CategorySelectedEvent;
}

// 2. 상태 구체화
@freezed
abstract class CategoryPageState with _$CategoryPageState {
  const factory CategoryPageState.init() = InitState;
  const factory CategoryPageState.loading() = LoadingState;
  const factory CategoryPageState.navigateToPosts(
      {required String categoryValue}) = NavigateToPostsState;
  const factory CategoryPageState.error({required String message}) = ErrorState;
}

@injectable
class CategoryPageBloc extends Bloc<CategoryPageEvent, CategoryPageState> {
  CategoryPageBloc() : super(const CategoryPageState.init()) {
    // 3. 단 하나의 이벤트 핸들러 등록
    on<CategorySelectedEvent>(_onCategorySelected);
  }

  Future<void> _onCategorySelected(
    CategorySelectedEvent event,
    Emitter<CategoryPageState> emit,
  ) async {
    try {
      emit(const CategoryPageState.loading());
      await Future.delayed(const Duration(milliseconds: 2000)); // 인위적인 딜레이

      // 이벤트로부터 받은 categoryValue를 상태에 담아 전달
      emit(CategoryPageState.navigateToPosts(
          categoryValue: event.categoryValue));
    } catch (e) {
      emit(CategoryPageState.error(message: '처리 중 오류가 발생했습니다: $e'));
    }
  }
}
