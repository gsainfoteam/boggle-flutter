import 'package:boggle_flutter/app/modules/auth/data/data_source/token_storage.dart';
import 'package:boggle_flutter/app/modules/auth/domain/repositories/auth_repository.dart';
import 'package:boggle_flutter/app/modules/user/data/model/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStart() = AppStartEvent; // 앱 시작 이벤트
  const factory AuthEvent.login(
    String? email,
    String? password,
  ) = LoginEvent; // 'Login' 이벤트를 정의
  const factory AuthEvent.logout() = LogoutEvent; // 'Logout' 이벤트를 정의
}

// --- State 정의 ---
@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.init() = InitState; // 초기 상태
  const factory AuthState.loading() = LoadingState; // 로딩 중 상태
  const factory AuthState.authenticate() = AuthenticatedState; // 인증된 상태
  const factory AuthState.unAuthenticate() = UnAuthenticatedState; // 인증되지 않은 상태
}

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository
      _authRepository; // 변수명이나 함수명 앞에 _(언더스코어) 붙이면 이 파일에서만 접근 가능.
  final TokenStorage _tokenStorage; // import해서 이 변수 못 가져옴.
  // 초기 상태를 StateInit()으로 설정
  AuthBloc(
    AuthRepository authRepository,
    TokenStorage tokenStorage,
  )   : _authRepository = authRepository,
        _tokenStorage = tokenStorage,
        super(const AuthState.init()) {
    // 'LoginEvent'가 들어왔을 때 실행할 로직을 등록
    on<AppStartEvent>(_appStart);
    on<LoginEvent>(_login);
    on<LogoutEvent>(_logout);
  }

  // onAuthenticate 메소드 정의
  Future<void> _appStart(AuthEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading()); // UI에 로딩 표시
    try {
      final accessToken = await _tokenStorage.storage.read(key: 'accessToken');
      if (accessToken != null) {
        emit(const AuthState.unAuthenticate());
      }
    } catch (e) {
      emit(const AuthState.unAuthenticate());
    }
  }

  Future<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    // 이벤트 타입을 LoginEvent로 변경함으로써 파라미터 접근 가능
    emit(const AuthState.loading()); // UI에 로딩 표시
    try {
      await _authRepository.login(
        UserModel(email: event.email, password: event.password),
      );
      emit(const AuthState.authenticate()); // 인증 성공 시 상태 변경
    } catch (e) {
      // 인증 실패 시 에러 상태로 변경
      emit(const AuthState.unAuthenticate()); // 인증 실패 시 상태 변경
    }
  }

  Future<void> _logout(AuthEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading()); // UI에 로딩 표시
    await _authRepository.logout();
    emit(const AuthState.unAuthenticate()); // 로그아웃 성공 시 상태 변경
  }
}
