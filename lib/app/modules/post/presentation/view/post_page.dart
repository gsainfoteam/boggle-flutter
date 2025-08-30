import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/post/presentation/bloc/post_page_bloc.dart';
import 'package:boggle_flutter/app/modules/post/presentation/widgets/recruitment.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:boggle_flutter/app/modules/common/presentation/widgets/boggle_app_bar.dart';

@RoutePage()
class PostPage extends StatelessWidget {
  const PostPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<PostPageBloc>()..add(PostPageEvent.load()),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: BoggleAppBar.main(
          onSearchTap: () {
            print('Search icon tapped');
          },
          onEditTap: () {
            context.router.push(const CategoryRoute());
          },
        ),
        body: BlocBuilder<PostPageBloc, PostPageState>(
          builder: (context, state) {
            return state.when(
              init: () => Text('게시글 불러 오는 중..'),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (items) => RefreshIndicator(
                onRefresh: () async {
                  context.read<PostPageBloc>().add(PostPageEvent.load());
                },
                child: ListView.builder(
                    itemCount: items.total,
                    itemBuilder: (context, index) {
                      return Recruitment(postModel: items.posts[index]);
                    }),
              ),
              error: (message) => Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                          context
                              .read<PostPageBloc>()
                              .add(PostPageEvent.load());
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
    );
  }
}
