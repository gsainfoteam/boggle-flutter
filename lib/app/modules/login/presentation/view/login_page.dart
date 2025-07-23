import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/auth/domain/repositories/auth_repository.dart';
import 'package:boggle_flutter/app/modules/login/presentation/bloc/login_page_bloc.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    // 컨트롤러 해제 -> 메모리 누수 방지
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final router = context.router;

    return BlocProvider(
        create: (context) => sl<LoginPageBloc>(),
        child: BlocListener<LoginPageBloc, LoginPageState>(
          listener: (context, state) {
            state.whenOrNull(
              // whenOrNull 을 사용하면 특정 상태에 대한 지시가 없더라도 처리 가능
              // init 과 loading 상태는 UI가 필요하므로 아래쪽 Scaffold에서 처리
              // loaded 상태는 navigation, side effect 이므로 BlocListener에서 처리
              loaded: () {
                // 로그인 성공 시 홈 화면으로 이동
                router.push(const PostRoute());
              },
            );
          },
          child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            body: BlocBuilder<LoginPageBloc, LoginPageState>(
              builder: (context, state) {
                return state.when(
                  init: () => Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 56),
                        child: Assets.images.logo.svg(height: 100),
                      ),
                      TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: "이메일을 입력하세요",
                          hintStyle: const TextStyle(
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 122, 122, 122),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      TextField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "비밀번호를 입력하세요",
                          hintStyle: const TextStyle(
                            fontSize: 15,
                            fontFamily: 'Pretendard',
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 122, 122, 122),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              context.read<LoginPageBloc>().add(
                                    LoginPageEvent.login(
                                      emailController.text,
                                      passwordController.text,
                                    ),
                                  );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 75, 126, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              minimumSize: const Size.fromHeight(45),
                            ),
                            child: const Text(
                              "로그인",
                              style: TextStyle(
                                fontSize: 19,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "회원가입",
                              style: const TextStyle(
                                fontSize: 15,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 0, 0, 0),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: () => const SizedBox
                      .shrink(), // loaded 상태 시, 다른 페이지로 전환되므로 login page UI 아무 것도 필요 없음.
                  error: (message) => Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(message,
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Pretendard',
                                fontWeight: FontWeight.w600)),
                        const SizedBox(height: 24),
                        ElevatedButton(
                            onPressed: () {
                              context.read<LoginPageBloc>().add(
                                    LoginPageEvent.retry(),
                                  );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 75, 126, 255),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text('다시 시도',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w600)))
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
