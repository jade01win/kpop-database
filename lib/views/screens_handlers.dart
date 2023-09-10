import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kpop_database/widgets/home/IURBottomBar.dart';
import 'package:kpop_database/views/profile_screen.dart';

import '../services/screens_handler_controller/screens_handler_controller.dart';
import 'package:kpop_database/views/home.dart';
import 'package:kpop_database/views/search.dart';
import 'package:kpop_database/views/settings.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final controller = Get.put(ScreensHandlerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: IURBottomBar(),
        ),
      ),
      body: GetBuilder<ScreensHandlerController>(
        id: controller.idToUpdateWith,
        global: true,
        builder: (_) {
          return PageView(
            key: const ValueKey("pageView"),
            controller: _.pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: <Widget>[
              HomeScreen(),
              SearchScreen(),
              ProfileScreen(),
              SettingPage(),
            ],
          );
        },
      ),
    );
  }
}
