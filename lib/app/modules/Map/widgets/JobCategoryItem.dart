import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getx_skeleton/config/theme/my_fonts.dart';

class JobCategoryItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  final Color color;
  final Color textColor;

  const JobCategoryItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 164.w,
            height: 189.h,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 15.h),
                Image.asset(
                  icon,
                  height: 50.h,
                  width: 50.w,
                ),
                SizedBox(height: 15.h),
                Text(
                  title,
                  style: textTheme.titleLarge!.copyWith(color: textColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 15.h),
                Text(
                  subtitle,
                  style: textTheme.titleMedium!.copyWith(color: textColor),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
