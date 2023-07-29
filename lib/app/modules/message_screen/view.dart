import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/message/message_response.dart';

import '../../../config/theme/my_fonts.dart';
import '../../components/color_manager.dart';
import '../home/views/home_view.dart';
import '../messages/view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class MessageScreenPage extends GetView<MessageScreenController> {
  MessageScreenPage({Key? key}) : super(key: key);
  var arguments = Get.arguments as MessageArgumentModels;

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageScreenController>(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorManager.base20,
          bottomNavigationBar: BottomNavbar(),
          body: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AppBarConst(),
              Container(
                  height: 20,
                  color: Color(0xffD9D9D9),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cengiz Türkeş İle Görüşme",
                        style: TextStyle(
                            fontFamily: "Gilroy", color: Color(0xff343434)),
                      ),
                    ],
                  )),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/message/profile1.png"),
                          radius: 35,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.w,
                                  right: 15.w,
                                  top: 10.h,
                                  bottom: 10.h),
                              child: Text(
                                "Merhaba, \n Özel Dersinizle ilgili bilgi alabilir miyim?",
                                style: TextStyle(
                                    fontSize: 12, fontFamily: "Gilroy"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.w, right: 30.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.r),
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15.w,
                                  right: 15.w,
                                  top: 10.h,
                                  bottom: 10.h),
                              child: Text(
                                "Merhaba, \n Özel Dersinizle ilgili bilgi alabilir miyim?",
                                style: TextStyle(
                                    fontSize: 12, fontFamily: "Gilroy"),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/message/profile1.png"),
                          radius: 35,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
        );
      },
    );
  }
}
