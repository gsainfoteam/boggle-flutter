// ignore_for_file: deprecated_member_use_from_same_package

import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/di/locator.dart';
import 'package:boggle_flutter/app/modules/category/data/models/category_model.dart';
import 'package:boggle_flutter/app/modules/category/presentation/bloc/category_page_bloc.dart';
import 'package:boggle_flutter/app/modules/category/presentation/widgets/category_selection.dart';
import 'package:boggle_flutter/app/modules/common/presentation/widgets/boggle_app_bar.dart';
import 'package:boggle_flutter/app/modules/common/presentation/widgets/boggle_nav.dart';
import 'package:boggle_flutter/gen/assets.gen.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 1. BlocProvider를 사용해 BLoC 인스턴스를 위젯 트리에 제공합니다.
    return BlocProvider(
      create: (context) => sl<CategoryPageBloc>(),
      child: Scaffold(
        appBar: BoggleAppBar.main(
          onSearchTap: () {
            // Search 아이콘 클릭 시 동작
            // 일단 검색 기능이 없기 때문에 로그 출력
            print('Search icon tapped');
          },
          onEditTap: () {
            context.router.push(const CategoryRoute());
          },
        ),
        // 2. BlocConsumer를 사용해 상태 변화에 따른 UI 변경과 리스너 동작을 모두 처리합니다.
        body: BlocConsumer<CategoryPageBloc, CategoryPageState>(
          listener: (context, state) {
            state.whenOrNull(
              // navigateToPosts 상태일 때 실행, categoryValue를 인자로 받음
              navigateToPosts: (categoryValue) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('$categoryValue 선택! 다음 페이지로 이동합니다.')),
                );
                // 다음 페이지로 이동하는 로직을 여기에 추가
                switch (categoryValue) {
                  case 'rm':
                    context.router.push(MakeRMRoute());
                    break;
                  case 'study':
                    context.router.push(const StudyRoute());
                    break;
                  case 'gp':
                    context.router.push(const GroupPurchaseRoute());
                    break;
                  case 'other':
                    context.router.push(const OtherRoute());
                    break;
                  default:
                    // 예외 상황 처리
                    print('알 수 없는 카테고리: $categoryValue');
                    break;
                }
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
            );
          },
          builder: (context, state) {
            // 3. Stack을 사용해 로딩 중일 때 화면 위에 인디케이터를 띄웁니다.
            return Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 7),
                      child: Text('카테고리를 선택하세요',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Pretendard')),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                        child: CategorySelection(
                      items: List<CategoryModel>.of([
                        CategoryModel(
                            title: '룸메이트',
                            icon: Assets.icons.roommate,
                            value: 'rm'),
                        CategoryModel(
                            title: '스터디',
                            icon: Assets.icons.study,
                            value: 'study'),
                        CategoryModel(
                            title: '공동구매',
                            icon: Assets.icons.groupPurchase,
                            value: 'gp'),
                        CategoryModel(
                            title: '/',
                            icon: Assets.icons.truck,
                            value: 'other'),
                      ]),
                      // 4. onCategoryTap 콜백에서 선택된 카테고리에 맞는 이벤트를 BLoC에 전달합니다.
                      onCategoryTap: (categoryValue) {
                        // 선택된 카테고리의 value를 담아 단일 이벤트를 전달
                        context.read<CategoryPageBloc>().add(
                              CategoryPageEvent.categorySelected(
                                  categoryValue: categoryValue.value),
                            );
                      },
                    )),
                  ],
                ),
                // 로딩 상태일 때 화면 전체를 덮는 로딩 인디케이터를 표시
                if (state is LoadingState)
                  const Opacity(
                    opacity: 0.5,
                    child: ModalBarrier(
                      dismissible: false,
                      color: Colors.black,
                    ),
                  ),
                if (state is LoadingState)
                  const Center(
                    child: CircularProgressIndicator(),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}
