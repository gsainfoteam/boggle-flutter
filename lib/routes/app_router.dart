import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, initial: true),
        AutoRoute(page: PostRoute.page),
        AutoRoute(page: CategoryRoute.page),
        AutoRoute(page: MakeRMRoute.page),
        AutoRoute(page: StudyRoute.page),
        AutoRoute(page: GroupPurchaseRoute.page),
        AutoRoute(page: OtherRoute.page),
        AutoRoute(page: PostRMRoute.page),
      ];
}
