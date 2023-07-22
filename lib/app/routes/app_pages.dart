import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/advertise/index.dart';
import 'package:getx_skeleton/app/modules/advertise_second/index.dart';
import 'package:getx_skeleton/app/modules/delete_acc/index.dart';
import 'package:getx_skeleton/app/modules/personal_information/index.dart';
import 'package:getx_skeleton/app/modules/phone_number/index.dart';
import 'package:getx_skeleton/app/modules/posting_on_air/index.dart';
import 'package:getx_skeleton/app/modules/profile/bindings.dart';

import '../help _and_guide_apps/bindings.dart';
import '../help _and_guide_apps/view.dart';
import '../modules/about/bindings.dart';
import '../modules/about/view.dart';
import '../modules/account_info/bindings.dart';
import '../modules/account_info/view.dart';
import '../modules/advertise_first/bindings.dart';
import '../modules/advertise_first/view.dart';
import '../modules/advertise_third/bindings.dart';
import '../modules/advertise_third/view.dart';
import '../modules/advetise_last/bindings.dart';
import '../modules/advetise_last/view.dart';
import '../modules/change_number/bindings.dart';
import '../modules/change_number/view.dart';
import '../modules/change_number_with_email_page/bindings.dart';
import '../modules/change_number_with_email_page/view.dart';
import '../modules/change_password/bindings.dart';
import '../modules/change_password/view.dart';
import '../modules/favorite/bindings.dart';
import '../modules/favorite/view.dart';
import '../modules/favoriteSubCategory/bindings.dart';
import '../modules/favoriteSubCategory/view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/language_select/bindings.dart';
import '../modules/language_select/view.dart';
import '../modules/messages/bindings.dart';
import '../modules/messages/view.dart';
import '../modules/new_phone_number/bindings.dart';
import '../modules/new_phone_number/view.dart';
import '../modules/payment/bindings.dart';
import '../modules/payment/view.dart';
import '../modules/permission_view/bindings.dart';
import '../modules/permission_view/view.dart';
import '../modules/permissions/bindings.dart';
import '../modules/permissions/view.dart';
import '../modules/problem_suggestion_notification/bindings.dart';
import '../modules/problem_suggestion_notification/view.dart';
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
    GetPage(
      name: _Paths.CHANGEPHONENUMBERWITHEMAIL,
      page: () => ChangeNumberWithEmailPagePage(),
      binding: ChangeNumberWithEmailPageBinding(),
    ),
    GetPage(
      name: _Paths.NEWPHONENUMBER,
      page: () => NewPhoneNumberPage(),
      binding: NewPhoneNumberBinding(),
    ),
    GetPage(
      name: _Paths.CHANGEPASSWORD,
      page: () => ChangePasswordPage(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.DELETEACC,
      page: () => DeleteAccPage(),
      binding: DeleteAccBinding(),
    ),
    GetPage(
      name: _Paths.PERMISSIONS,
      page: () => PermissionsPage(),
      binding: PermissionsBinding(),
    ),
    GetPage(
      name: _Paths.PERMISSIONSVIEW,
      page: () => PermissionViewPage(),
      binding: PermissionViewBinding(),
    ),
    GetPage(
      name: _Paths.HELPANDGUIDEAPPS,
      page: () => HelpAndGuideAppsPage(),
      binding: HelpAndGuideAppsBinding(),
    ),
    GetPage(
      name: _Paths.PROBLEMSUGGESTIONNOTIFICATION,
      page: () => ProblemSuggestionNotificationPage(),
      binding: ProblemSuggestionNotificationBinding(),
    ),
    GetPage(
      name: _Paths.LANGUAGESELECT,
      page: () => LanguageSelectPage(),
      binding: LanguageSelectBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutPage(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.ADVERTISEFIRSTPAGE,
      page: () => AdvertiseFirstPage(),
      binding: AdvertiseFirstBinding(),
    ),
    GetPage(
      name: _Paths.ADVERTISESECONDPAGE,
      page: () => AdvertiseSecondPage(),
      binding: AdvertiseSecondBinding(),
    ),
    GetPage(
      name: _Paths.ADVERTISETHIRDPAGE,
      page: () => AdvertiseThirdPage(),
      binding: AdvertiseThirdBinding(),
    ),
     GetPage(
      name: _Paths.PAYMENTPAGE,
      page: () => PaymentPage(),
      binding: PaymentBinding(),
    ),  GetPage(
      name: _Paths.ADVERTISELAST,
      page: () => AdvetiseLastPage(),
      binding: AdvetiseLastBinding(),
    ),
    // GetPage(
    //   name: _Paths.CHANGEPHONENUMBERWITHPHONENUMBER,
    //   page: () => ChangePhonenumberWithPhonenumberPage(),
    //   binding: ChangePhonenumberWithPhonenumberBinding(),
    // ),
  ];
}
