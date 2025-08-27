import 'package:boggle_flutter/app/modules/auth/domain/repositories/auth_repository.dart';
import 'package:boggle_flutter/app/modules/auth/domain/repositories/oauth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'login_page_bloc.freezed.dart';

@freezed
abstract class LoginPageEvent with _$LoginPageEvent {
  const factory LoginPageEvent.login() = LoginEvent; // 'Login' 이벤트를 정의
  const factory LoginPageEvent.retry() = RetryEvent; // 'Retry' 이벤트를 정의
  const factory LoginPageEvent.skip() = SkipEvent; // 'Skip' 이벤트를 정의
}

// --- State 정의 ---
@freezed
abstract class LoginPageState with _$LoginPageState {
  const factory LoginPageState.init() = InitState; // 초기 상태
  const factory LoginPageState.loading() =
      LoadingState; // 사용자가 Id, Pw를 입력한 뒤 버튼을 누르면 api와 검증 상태
  const factory LoginPageState.loaded() = LoadedState;
  const factory LoginPageState.error({required String message}) =
      ErrorState; // 에러 상태 (메시지 포함)
}

@injectable
class LoginPageBloc extends Bloc<LoginPageEvent, LoginPageState> {
  final OAuthRepository _oauthRepository;
  // 생성자에서 AuthRepository를 주입
  // 초기 상태를 StateInit()으로 설정
  LoginPageBloc(OAuthRepository oauthRepository)
      : _oauthRepository = oauthRepository,
        super(const LoginPageState.init()) {
    // 'LoginEvent'가 들어왔을 때 실행할 로직을 등록
    on<LoginEvent>(_onLogin);
    on<RetryEvent>(_onRetry); // RetryEvent도 로그인 로직을 재사용
    on<SkipEvent>(_onSkip);
  }

  // onLoad 메소드 정의
  Future<void> _onLogin(LoginEvent event, Emitter<LoginPageState> emit) async {
    try {
      // 로딩 상태로 변경하여 UI에 로딩 인디케이터를 표시하도록 함
      emit(LoginPageState.loading());
      // 2. OAuthRepository의 login 메소드 호출
      await _oauthRepository.login();
      // 3. 성공 상태로 변경
      emit(LoginPageState.loaded());
    } catch (e) {
      print('Login failed with error: $e');
      // 4. 에러 발생 시 에러 상태로 변경하고, 에러 메시지를 전달
      emit(LoginPageState.error(message: '데이터를 불러오는 데 실패했습니다: $e'));
    }
  }

  Future<void> _onRetry(RetryEvent event, Emitter<LoginPageState> emit) async {
    // error 상태일 때 RetryEvent가 발생하면 login page 처음 상태로 되돌리기
    emit(const LoginPageState.init()); // 초기 상태로 변경
  }

  Future<void> _onSkip(SkipEvent event, Emitter<LoginPageState> emit) async {
    emit(const LoginPageState.loading());
    emit(const LoginPageState.loaded());
  }
}
