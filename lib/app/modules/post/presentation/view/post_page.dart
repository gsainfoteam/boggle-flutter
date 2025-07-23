import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/post/presentation/bloc/post_page_bloc.dart';
import 'package:boggle_flutter/app/modules/post/presentation/widgets/recruitment.dart';
import 'package:flutter/material.dart';
//import 'package:boggle_flutter/app/modules/presentation/widgets/tag.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:boggle_flutter/app/modules/common/presentation/widgets/boggle_app_bar.dart';

@RoutePage()
class PostPage extends StatefulWidget {
  const PostPage({
    super.key,
  });

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  void initState() {
    super.initState();
    //기존에는 BlocProvider의 create 부분에서 ..add(const PostPageEvent.load());
    //를 하였으나, BlocProvider의 create 콜백은 Bloc 인스턴스를 생성하고 제공하는 역할만
    //수행해야한다. 즉, 여기에 ..add(event);는 단일 책임 원칙에 어긋난다.
    //그래서, PostPage를 StatefulWidget으로 바꾸고, initState에서 load Event를 추가할 것이다.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<PostPageBloc>().add(const PostPageEvent.load());
    });
    //WidgetsBinding.instance.addPostFrameCallback((_) {}) 은 이번 프레임 렌더링이 완전히 끝난 이후에
    //이 안에 있는 코드를 딱 한 번 실행해달라는 메소드이다.
  }

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
      create: (context) => sl<PostPageBloc>(),
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
