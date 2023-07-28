import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';
import 'package:getx_skeleton/config/theme/my_fonts.dart';

import '../../../data/models/category/category_sub_responce.dart';

class JobCategoryItem extends StatelessWidget {
  final String icon;
  final Category category;
  final Color color;
  final Color textColor;

  const JobCategoryItem({
    Key? key,
    required this.icon,
    required this.category,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
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
                    category.name,
                    style: textTheme.titleLarge!.copyWith(color: textColor),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    category.subcategories.map((e) => e.name).join(" - "),
                    style: textTheme.titleMedium!.copyWith(color: textColor),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
