import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/my_fonts.dart';

class BlueTextProfile extends StatelessWidget {
  final String title;
  const BlueTextProfile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: textTheme.titleMedium);
  }
}
class BlueTextProfileSmall extends StatelessWidget {
  final String title;
  const BlueTextProfileSmall({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(
      fontSize: 13,
      color: Color(0xff0075FF),
      fontFamily: "Gilroy-Regular",
      fontWeight: FontWeight.w500,
    ),);
  }
}
class BlueTextProfilePhone extends StatelessWidget {
  final String title;
  const BlueTextProfilePhone({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20,
        color: Color(0xff0075FF),
        fontFamily: "Gilroy-Regular",
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class BlackTextProfile extends StatelessWidget {
  final String title;
  const BlackTextProfile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 15,
        color: Color(0xff343434),
        fontFamily: "Gilroy-Regular",
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class BlackTextProfileEmail extends StatelessWidget {
  final String title;
  const BlackTextProfileEmail({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 11.sp,
        color: Color(0xff343434),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class BlackTextProfileBold extends StatelessWidget {
  final String title;
  const BlackTextProfileBold({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 14,
        color: Color.fromARGB(255, 58, 45, 45),
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class BlackTextProfileCenter extends StatelessWidget {
  final String title;
  const BlackTextProfileCenter({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 15,
        color: Color(0xff343434),
        fontFamily: "Gilroy-Regular",
        fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
