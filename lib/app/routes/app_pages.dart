import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/advertise/index.dart';

import '../modules/favorite/bindings.dart';
import '../modules/favorite/view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ADVERTISE,
      page: () => AdvertisePage(),
      binding: AdvertiseBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoritePage(),
      binding: FavoriteBinding(),
    ),
  ];
}
