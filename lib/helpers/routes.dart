import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:kpop_database/services/profile_screen_controller/profile_screen_controller.dart';
import 'package:kpop_database/views/profile_screen.dart';

import 'package:kpop_database/views/screens_handlers.dart';

class AppRoutes {
  static List<GetPage> routes = <GetPage>[
    GetPage(
      name: "/",
      page: () => Homepage(),
    ),
    GetPage(
      name: "/profile",
      page: () => const ProfileScreen(),
    ),
  ];
}
