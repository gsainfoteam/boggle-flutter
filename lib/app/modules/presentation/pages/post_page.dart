import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/presentation/bloc/post_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/notice_thumbnail.dart';
//import 'package:boggle_flutter/app/modules/presentation/widgets/tag.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_Nav.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_app_bar.dart';

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
        appBar: BoggleAppBar(),
        body:
            BlocBuilder<PostPageBloc, PostPageState>(builder: (context, state) {
          return state.when(
              init: () => const Center(child: Text('Boggle에 오신걸 환영합니다!')),
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
                          return Center(
                              child: Text("Thumbnail Widget 완성되면 여기에 넣기"));
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

/*Center(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 32,
          right: 32,
          top: 24,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            postModel[index].title,
            style: const TextStyle(
              fontSize: 25,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                postModel[index].author.name,
                style: const TextStyle(
                  color: Color.fromARGB(255, 151, 151, 151),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                Date,
                style: const TextStyle(
                  color: Color.fromARGB(255, 151, 151, 151),
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Tag(
                postModel: postModel,
                index: index,
              ),
              const SizedBox(width: 5),
              Tag(
                postModel: postModel,
                index: index,
              ),
              const SizedBox(width: 5),
              Tag(
                postModel: postModel,
                index: index,
              )
            ],
          ),
          const SizedBox(height: 24),
          if (image.isNotEmpty)
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // 이미지의 모서리를 둥글게 설정
                child: Image.memory(
                  image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          const SizedBox(
            height: 24,
          ),
          Text(
            postModel[index].body,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
            ),
          ),
        ]),
      ),
    );
  }
}*/
