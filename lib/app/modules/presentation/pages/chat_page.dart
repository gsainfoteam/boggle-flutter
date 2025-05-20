/*import 'package:auto_route/auto_route.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_nav.dart';
import 'package:boggle_flutter/routes/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:boggle_flutter/app/modules/presentation/widgets/boggle_app_bar.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        MainRoute(),
        Profile_others_Route(),
        CategoryRoute(),
        ChatRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          appBar: const BoggleAppBar(),
          body: Container(),
          bottomNavigationBar: const BoggleNav(),
        );
      },
    );
  }
}
*/
