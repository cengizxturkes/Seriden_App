import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/theme/my_fonts.dart';

class HeaderTextProfile extends StatelessWidget {
  final String title;
  const HeaderTextProfile({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: Text(title,
          style: textTheme.titleMedium),
    );
  }
}
