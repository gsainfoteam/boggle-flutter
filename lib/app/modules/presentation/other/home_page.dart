/*import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
    // required this.~~Model,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  /*bool isLoading = false;
  late final Dio _dio;
  PostListModel? response;
  late List<PostModel> postModel;
  late int index;
  final bloc = LoadingBloc();
  Future<void> _fetchData() async {
    setState(() {
      isLoading = true; // 로딩 상태 시작
    });

    _dio = Dio(BaseOptions(
        baseUrl: 'https://api.newbie.gistory.me/',
        headers: {'Content-Type': 'application/json'}));

    try {
      bloc.add(LoadingDuring());
      final postApi = PostApi(_dio);
      response = await postApi.getPosts();
      postModel = response!.list;
      index = response!.count;
      bloc.add(LoadingEnd());
      setState(() {
        isLoading = false;
        postModel = response!.list;
        index = response!.count;
      });
    } catch (e) {
      bloc.add(LoadingError());
      setState(() {
        isLoading = false; // 로딩 상태 종료
      });
      print('General Error occurred: $e');
    }
  } 
 @override
  void initState() {
    super.initState();
    _fetchData();
  } */

  @override
  Widget build(BuildContext context) {
    return /*isLoading
        ? const Center(child: CircularProgressIndicator())
        : response == null
        ? */ 
        ListView.builder(
      itemCount: 10 // : ~~Model.index,
      itemBuilder: (context, index) {
        return /*Post(...).images != null ? 
        Post(...) */

      }
        )
  }
}*/
