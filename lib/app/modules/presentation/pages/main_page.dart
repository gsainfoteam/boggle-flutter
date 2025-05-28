import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/data/data_source/post_api.dart';
import 'package:boggle_flutter/app/modules/data/data_source/user_api.dart';
import 'package:boggle_flutter/app/modules/data/model/post_list_model.dart';
import 'package:boggle_flutter/app/modules/data/model/post_model.dart';
import 'package:boggle_flutter/app/modules/data/model/user_model.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_nav.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_app_bar.dart';

// main.dart 를 실행했을 때, 각 page들을 auto_route로 연결해주는 역할
// + StackRouter 를 자동으로 해주는 역할. 이 page에서 child만 바뀌며
// 다른 곳으로 연결될 다른 page들을 가져온다.

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isLoading = false;
  late final Dio _dio;
  PostListModel? response;
  late UserModel userModel;
  late List<PostModel> postModel;
  late int index;
  Future<void> _fetchData() async {
    setState(() {
      isLoading = true;
    });

    _dio = Dio(BaseOptions(
        baseUrl: 'https://13.125.147.62/api',
        headers: {'Content-Type': 'application/json'}));

    try {
      final postApi = PostApi(_dio);
      final userApi = UserApi(_dio);
      response = await postApi.getPosts();
      userModel = await userApi.getUsers();
      setState(() {
        isLoading = false;
        postModel = response!.list;
        userModel = userModel;
        index = response!.total;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
      print('General Error occurred: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : response == null
            ? const Center(child: Text('데이터가 없습니다.'))
            : AutoTabsRouter(
                routes: [
                  HomeRoute(
                    index: index,
                    postModel: postModel,
                  ),
                  //CategoryRoute(),
                  //ChatRoute(),
                  Profile_others_Route(
                    index: index,
                    postModel: postModel,
                    userModel: userModel,
                  ),
                ],
                builder: (context, child) {
                  final tabsRouter = AutoTabsRouter.of(context);
                  return Scaffold(
                    appBar: const BoggleAppBar(),
                    body: child,
                    bottomNavigationBar: BoggleNav(
                      tabsRouter: tabsRouter,
                    ),
                  );
                },
              );
  }
}
