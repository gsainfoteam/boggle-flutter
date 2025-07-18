import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/post/presentation/bloc/post_page_bloc.dart';
import 'package:boggle_flutter/app/modules/post/presentation/widgets/recruitment.dart';
import 'package:flutter/material.dart';
//import 'package:boggle_flutter/app/modules/presentation/widgets/tag.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:boggle_flutter/app/modules/common/presentation/widgets/boggle_app_bar.dart';

@RoutePage()
class PostPage extends StatelessWidget {
  const PostPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    //String Date = DateFormat('yyyy.mm.dd').format(postModel[index].createdAt);
    /*Uint8List image = Uint8List(0);
    if (postModel[index].images != null &&
        postModel[index].images!.isNotEmpty) {
      image = base64Decode(postModel[index].images![imageIndex].image);
    }*/

    return BlocProvider(
      create: (context) => PostPageBloc()..add(const PostPageEvent.load()),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: BoggleAppBar(),
        body:
            BlocBuilder<PostPageBloc, PostPageState>(builder: (context, state) {
          return state.when(
              init: () => const Center(child: Text('게시글을 불러오는 중입니다...')),
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (items) => RefreshIndicator(
                    onRefresh: () async {
                      context
                          .read<PostPageBloc>()
                          .add(const PostPageEvent.load());
                    },
                    child: ListView.builder(
                        itemCount: items.total,
                        itemBuilder: (context, index) {
                          return Recruitment(
                              index: index, postModel: items.posts[index]);
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
                                  .add(const PostPageEvent.load());
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
                  ));
        }),
      ),
    );
  }
}
