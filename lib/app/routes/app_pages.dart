import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/local/my_hive.dart';
import 'package:getx_skeleton/app/modules/Splash/index.dart';
import 'package:getx_skeleton/app/modules/advertise/index.dart';
import 'package:getx_skeleton/app/modules/advertise_second/index.dart';
import 'package:getx_skeleton/app/modules/delete_acc/index.dart';
import 'package:getx_skeleton/app/modules/message_screen/index.dart';
import 'package:getx_skeleton/app/modules/personal_information/index.dart';
import 'package:getx_skeleton/app/modules/phone_number/index.dart';
import 'package:getx_skeleton/app/modules/posting_on_air/index.dart';
import 'package:getx_skeleton/app/modules/profile/bindings.dart';

import '../data/local/my_hive.dart';
import '../help _and_guide_apps/bindings.dart';
import '../help _and_guide_apps/view.dart';
import '../middlewares/auth_middleware.dart';
import '../modules/Create_acc_with_phone_number/bindings.dart';
import '../modules/Create_acc_with_phone_number/view.dart';
import '../modules/about/bindings.dart';
import '../modules/about/view.dart';
import '../modules/account_info/bindings.dart';
import '../modules/account_info/view.dart';
import '../modules/advertise_first/bindings.dart';
import '../modules/advertise_first/view.dart';
import '../modules/advertise_list/bindings.dart';
import '../modules/advertise_list/view.dart';
import '../modules/advertise_list_sub/bindings.dart';
import '../modules/advertise_list_sub/view.dart';
import '../modules/advertise_third/bindings.dart';
import '../modules/advertise_third/view.dart';
import '../modules/advertise_list_sub_single/bindings.dart';
import '../modules/advertise_list_sub_single/view.dart';
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
import '../modules/login_email/bindings.dart';
import '../modules/login_email/view.dart';
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
import '../modules/register_phone_number/bindings.dart';
import '../modules/register_phone_number/view.dart';
import '../modules/register_user_google/bindings.dart';
import '../modules/register_user_google/view.dart';
import '../modules/sign_up/bindings.dart';
import '../modules/sign_up/view.dart';
import '../modules/unpublished_advertise/bindings.dart';
import '../modules/unpublished_advertise/view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.ADVERTISE,
      page: () => AdvertisePage(),
      binding: AdvertiseBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoritePage(),
      binding: FavoriteBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
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
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfilePage(),
      binding: ProfileBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.POSTINGONAIR,
      page: () => PostingOnAirPage(),
      binding: PostingOnAirBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
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
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.PERSONELINFORMATION,
      page: () => PersonalInformationPage(),
      binding: PersonalInformationBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.PHONENUMBER,
      page: () => PhoneNumberPage(),
      binding: PhoneNumberBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.CHANGEPHONENUMBER,
      page: () => ChangeNumberPage(),
      binding: ChangeNumberBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.CHANGEPHONENUMBERWITHEMAIL,
      page: () => ChangeNumberWithEmailPagePage(),
      binding: ChangeNumberWithEmailPageBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.NEWPHONENUMBER,
      page: () => NewPhoneNumberPage(),
      binding: NewPhoneNumberBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.CHANGEPASSWORD,
      page: () => ChangePasswordPage(),
      binding: ChangePasswordBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.DELETEACC,
      page: () => DeleteAccPage(),
      binding: DeleteAccBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.PERMISSIONS,
      page: () => PermissionsPage(),
      binding: PermissionsBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.PERMISSIONSVIEW,
      page: () => PermissionViewPage(),
      binding: PermissionViewBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.HELPANDGUIDEAPPS,
      page: () => HelpAndGuideAppsPage(),
      binding: HelpAndGuideAppsBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.PROBLEMSUGGESTIONNOTIFICATION,
      page: () => ProblemSuggestionNotificationPage(),
      binding: ProblemSuggestionNotificationBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.LANGUAGESELECT,
      page: () => LanguageSelectPage(),
      binding: LanguageSelectBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutPage(),
      binding: AboutBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.ADVERTISEFIRSTPAGE,
      page: () => AdvertiseFirstPage(),
      binding: AdvertiseFirstBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.ADVERTISESECONDPAGE,
      page: () => AdvertiseSecondPage(),
      binding: AdvertiseSecondBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.ADVERTISETHIRDPAGE,
      page: () => AdvertiseThirdPage(),
      binding: AdvertiseThirdBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.PAYMENTPAGE,
      page: () => PaymentPage(),
      binding: PaymentBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.ADVERTISELAST,
      page: () => AdvetiseLastPage(),
      binding: AdvetiseLastBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignUpPage(),
      binding: SignUpBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.REGISTERPHONENUMBER,
      page: () => RegisterPhoneNumberPage(),
      binding: RegisterPhoneNumberBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.REGISTERUSERGOOGLE,
      page: () => RegisterUserGooglePage(),
      binding: RegisterUserGoogleBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.CREATEACCWITHPHONENUMBER,
      page: () => CreateAccWithPhoneNumberPage(),
      binding: CreateAccWithPhoneNumberBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.LOGINWITHEMAIL,
      page: () => LoginEmailPage(),
      binding: LoginEmailBinding(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: _Paths.ADVERTISELIST,
      page: () => AdvertiseListPage(),
      binding: AdvertiseListBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.ADVERTISELISTSUB,
      page: () => AdvertiseListSubPage(),
      binding: AdvertiseListSubBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: _Paths.MESSAGESCREEN,
      page: () => MessageScreenPage(),
      binding: MessageScreenBinding(),
      transition: Transition.noTransition,
      middlewares: [AuthMiddleWare()],
    ),
    // GetPage(
    //   name: _Paths.CHANGEPHONENUMBERWITHPHONENUMBER,
    //   page: () => ChangePhonenumberWithPhonenumberPage(),
    //   binding: ChangePhonenumberWithPhonenumberBinding(),
    // ),
  ];
}
