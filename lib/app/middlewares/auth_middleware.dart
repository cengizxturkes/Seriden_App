import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../data/local/my_hive.dart';
import '../routes/app_pages.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    var user = MyHive.getCurrentUser();
    if (user == null) {
      return const RouteSettings(name: Routes.SIGNUP);
    }
    if (route == Routes.SPLASH) {
      return const RouteSettings(name: Routes.HOME);
    }
    return null;
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    page = page!.copy(
        name: page.name,
        transition: Transition.rightToLeft,
        arguments: page.arguments);
    return super.onPageCalled(page);
  }
}
