import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../config/theme/dark_theme_colors.dart';
import '../controller.dart';

class LoginButtonWidget extends GetView<SignUpController> {
  final String title;
  final String iconpath;
  LoginButtonWidget({
    Key? key,
    required this.title,
    required this.iconpath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2, color: Color(0xff0075FF))),
          height: 50.h,
          width: 315.w,
          child: Stack(
            children: [
              Positioned.fill(
                child: Container(
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        color: DarkThemeColors.buttonTextColor,
                        fontSize: 15,
                        fontFamily: "Gilroy",
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Image.asset(iconpath),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        )
      ],
    );
  }
}
