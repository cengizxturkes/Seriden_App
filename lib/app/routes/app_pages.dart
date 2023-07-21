import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/advertise/index.dart';
import 'package:getx_skeleton/app/modules/personal_information/index.dart';
import 'package:getx_skeleton/app/modules/phone_number/index.dart';
import 'package:getx_skeleton/app/modules/posting_on_air/index.dart';
import 'package:getx_skeleton/app/modules/profile/bindings.dart';

import '../modules/account_info/bindings.dart';
import '../modules/account_info/view.dart';
import '../modules/change_number/bindings.dart';
import '../modules/change_number/view.dart';
import '../modules/favorite/bindings.dart';
import '../modules/favorite/view.dart';
import '../modules/favoriteSubCategory/bindings.dart';
import '../modules/favoriteSubCategory/view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/messages/bindings.dart';
import '../modules/messages/view.dart';
import '../modules/new_phone_number/bindings.dart';
import '../modules/new_phone_number/view.dart';
import '../modules/profile/view.dart';
import '../modules/unpublished_advertise/bindings.dart';
import '../modules/unpublished_advertise/view.dart';

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
    GetPage(
      name: _Paths.FAVORITESUBCATEGORY,
      page: () => FavoritesubcategoryPage(),
      binding: FavoritesubcategoryBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGES,
      page: () => MessagesPage(),
      binding: MessagesBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.POSTINGONAIR,
      page: () => PostingOnAirPage(),
      binding: PostingOnAirBinding(),
    ),
    GetPage(
      name: _Paths.UNPUBLISHEDADVERTICE,
      page: () => UnpublishedAdvertisePage(),
      binding: UnpublishedAdvertiseBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNTINFO,
      page: () => AccountInfoPage(),
      binding: AccountInfoBinding(),
    ),
    GetPage(
      name: _Paths.PERSONELINFORMATION,
      page: () => PersonalInformationPage(),
      binding: PersonalInformationBinding(),
    ),
    GetPage(
      name: _Paths.PHONENUMBER,
      page: () => PhoneNumberPage(),
      binding: PhoneNumberBinding(),
    ),
    GetPage(
      name: _Paths.CHANGEPHONENUMBER,
      page: () => ChangeNumberPage(),
      binding: ChangeNumberBinding(),
    ),
    // GetPage(
    //   name: _Paths.CHANGEPHONENUMBERWITHEMAIL,
    //   page: () => ChangePhonenumberWithEmailPage(),
    //   binding: ChangePhonenumberWithEmailBinding(),
    // ),
    GetPage(
      name: _Paths.NEWPHONENUMBER,
      page: () => NewPhoneNumberPage(),
      binding: NewPhoneNumberBinding(),
    ),
    // GetPage(
    //   name: _Paths.CHANGEPHONENUMBERWITHPHONENUMBER,
    //   page: () => ChangePhonenumberWithPhonenumberPage(),
    //   binding: ChangePhonenumberWithPhonenumberBinding(),
    // ),
  ];
}
