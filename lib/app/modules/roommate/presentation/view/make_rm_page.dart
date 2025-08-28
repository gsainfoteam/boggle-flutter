import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/common/presentation/widgets/boggle_app_bar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MakeRMPage extends StatelessWidget {
  const MakeRMPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const BoggleAppBar(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.verified_user, size: 80, color: Colors.green),
            const SizedBox(height: 20),
            const Text(
              'MakeRMRoute 페이지입니다.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // 현재 페이지를 스택에서 제거하고 이전 페이지로 돌아갑니다.
                context.router.maybePop();
              },
              child: const Text('뒤로가기'),
            ),
          ],
        ),
      ),
    );
  }
}
