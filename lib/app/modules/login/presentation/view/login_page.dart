import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/login/presentation/bloc/login_page_bloc.dart';
import 'package:boggle_flutter/app/modules/user/presentation/bloc/auth_bloc.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final router = context.router;

    return BlocProvider(
        create: (context) => sl<LoginPageBloc>(),
        child: BlocListener<LoginPageBloc, LoginPageState>(
          listener: (context, state) {
            state.whenOrNull(
              loaded: () {
                // 로그인 성공 시 홈 화면으로 이동
                //router.push(const PostRoute());
              },
            );
          },
          child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            body: BlocBuilder<LoginPageBloc, LoginPageState>(
              builder: (context, state) {
                return state.when(
                  init: () => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 56),
                        child: Assets.images.logo.svg(height: 100),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              // LoginEvent 이벤트를 Bloc에 전달
                              context
                                  .read<LoginPageBloc>()
                                  .add(const LoginPageEvent.login());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 75, 126, 255),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            child: const Text('GIST 메일로 시작하기',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: SizedBox(
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<LoginPageBloc>()
                                  .add(const LoginPageEvent.skip());
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 75, 126, 255),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                            ),
                            child: const Text('일단 넘어가기(테스트용)',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Pretendard',
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white)),
                          ),
                        ),
                      )
                    ],
                  ),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  loaded: () => const Center(
                      child:
                          CircularProgressIndicator()), // 다른 페이지로 전환되는 동안 로딩 표시
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
                                    const LoginPageEvent.retry(),
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
