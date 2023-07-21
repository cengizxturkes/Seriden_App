import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../config/theme/my_fonts.dart';
import '../../components/color_manager.dart';
import '../../routes/app_pages.dart';
import '../constwidget/CardImageWıdget.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class PostingOnAirPage extends GetView<PostingOnAirController> {
  const PostingOnAirPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PostingOnAirController>(
      builder: (_) {
        return Scaffold(
          bottomNavigationBar: BottomNavbar(),
          backgroundColor: ColorManager.base20,

          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppBarConst(),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w),
                child: Text("Yayında Olan İlanlarım",
                    style: textTheme.titleMedium),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w),
                child: Divider(),
              ),
              SizedBox(
                height: 20.h,
              ),
              CardImageWidget(
                image: 'assets/images/favorite/ozel-ders-listem.png',
                title: "yayında ilan",
              )
            ],
          )),
        );
      },
    );
  }
}

class CardPostingOnAir extends StatelessWidget {
  const CardPostingOnAir({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80.h,
        width: 315.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          image: DecorationImage(
            image: AssetImage(
              'assets/images/favorite/ozel-ders-listem.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            "Özel Ders İlanlarım",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontFamily: "Gilroy",
            ),
          ),
        ),
      ),
    );
  }
}
