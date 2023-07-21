import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/data/local/my_shared_pref.dart';
import '../translations/localization_service.dart';

// todo configure text family and size
class MyFonts {
  // return the right font depending on app language
  static TextStyle get getAppFontType =>
      LocalizationService.supportedLanguagesFontsFamilies[
          MySharedPref.getCurrentLocal().languageCode]!;

  // headlines text font
  static TextStyle get headlineTextStyle => getAppFontType;

  // body text font
  static TextStyle get bodyTextStyle => getAppFontType;

  // button text font
  static TextStyle get buttonTextStyle => getAppFontType;

  // app bar text font
  static TextStyle get appBarTextStyle => getAppFontType;

  // chips text font
  static TextStyle get chipTextStyle => getAppFontType;

  // appbar font size
  static double get appBarTittleSize => 18.sp;

  // body font size
  static double get body1TextSize => 13.sp;
  static double get body2TextSize => 13.sp;

  // headlines font size
  static double get headline1TextSize => 50.sp;
  static double get headline2TextSize => 40.sp;
  static double get headline3TextSize => 30.sp;
  static double get headline4TextSize => 25.sp;
  static double get headline5TextSize => 20.sp;
  static double get headline6TextSize => 17.sp;

  //button font size
  static double get buttonTextSize => 16.sp;

  //caption font size
  static double get captionTextSize => 13.sp;

  //chip font size
  static double get chipTextSize => 10.sp;
}

/*
    Tasarım dokümantasyonunda elimizde 11 adet textStyle bulunmaktaydı.
        --Headline için 5 adet
        --Body için 6 adet

    M3 tasarımda elimizde bu sayılarda headline ve body bulunmadığı için diğer
    style'lar adapte edildi.
    Yukarıdan aşağıya

    Headline ve title style'lar headline 1-2-3-4-5 e ayrıldı

    Body ve label style'lar body 1-2-3-4-5-6 ya ayrıldı.

    Uygulamada tek bir adet fontFamily olduğu için BeVietnamPro default font olarak app.dart'da tanımlandı.
    Renkler tasarımda farklı yerlerde farklı uygulandığı için kullanılan yerde tanımlanmak üzere bırakıldı.
 */
const textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.w700,
      height: 46 / 40,
    ),
    headlineMedium: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w700,
      height: 44 / 36,
    ),
    headlineSmall:
        TextStyle(fontSize: 32, fontWeight: FontWeight.w700, height: 42 / 32),
    titleLarge: TextStyle(
      fontSize: 20,
      color: Color(0xff0075FF),
      fontFamily: "Gilroy",
      fontWeight: FontWeight.w300,
    ),
    titleMedium: TextStyle(
      fontSize: 15,
      color: Color(0xff0075FF),
      fontFamily: "Gilroy-Regular",
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        height: 46 / 40,
        fontFamily: "Gilroy",
        color: Colors.white),
    bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontFamily: "Gilroy",
        fontWeight: FontWeight.w500),
    bodySmall: TextStyle(
        fontWeight: FontWeight.w100,
        fontSize: 14,
        height: 46 / 40,
        fontFamily: "Gilroy",
        color: Colors.black),
    labelLarge:
        TextStyle(fontWeight: FontWeight.w400, fontSize: 24, height: 32 / 24),
    labelMedium:
        TextStyle(fontWeight: FontWeight.w400, fontSize: 16, height: 24 / 16),
    labelSmall: TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 12 / 8,
    ),
    titleSmall:
        TextStyle(fontWeight: FontWeight.w700, fontSize: 12, height: 12 / 10));
