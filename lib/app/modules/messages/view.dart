import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/home/controllers/home_controller.dart';
import 'package:getx_skeleton/app/routes/app_pages.dart';

import '../../../config/theme/my_fonts.dart';
import '../../components/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../data/models/message/message_detail_response.dart';
import '../../data/models/message/message_response.dart';
import '../home/views/home_view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class MessageArgumentModels {
  Message message;

  MessageArgumentModels(
    this.message,
  );
}

class MessagesPage extends GetView<MessagesController> {
  const MessagesPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessagesController>(
      builder: (_) {
        List<String> jobList = [
          'Yazılım Mühendisi',
          'Veri Bilimcisi',
          'Makine Öğrenmesi Mühendisi',
          'Büyük Veri Mühendisi',
          'Yapay Zeka Mühendisi',
          'Oyun Geliştiricisi',
          'Web Geliştiricisi',
          'Mobil Geliştiricisi',
          'DevOps Mühendisi',
          'Ağ Mühendisi',
        ];
        List<String> nameSurnameList = [
          'Ali Öztürk',
          'Ayşe Yılmaz',
          'Mehmet Aydın',
          'Fatma Kara',
          'Hasan Gül',
          'Hatice Topal',
          'Hüseyin Demir',
          'Zeynep Çelik',
          'Ahmet Kılıç',
          'Gülşah Kaya',
        ];
        return Scaffold(
          backgroundColor: ColorManager.base20,
          bottomNavigationBar: BottomNavbar(),
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
                child: Text("Mesajlar", style: textTheme.bodySmall),
              ),
              SizedBox(height: 20.h),
              Expanded(
                  child: CustomFutureBuilder<List<Message>>(
                future: controller.getMessage(),
                onError: (msg) => Text(msg),
                onSuccess: (data) {
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: ((context, index) {
                      var message = data[index];
                      print(message);
                      return GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.MESSAGESCREEN, arguments: message);
                        },
                        child: Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, bottom: 10),
                          child: CardWidget(
                            imageUrl: message.photo,
                            name: message.nameSurname,
                            job: message.title,
                            isOnline: true,
                            messagetime: message.createdAt.toString(),
                          ),
                        ),
                      );
                    }),
                  );
                },
                onDataEmpty: () {
                  return Center(child: Text("Mesaj bulunamadı"));
                },
              )),
            ],
          )),
        );
      },
    );
  }
}

class CardWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String job;
  final bool isOnline;
  final String messagetime;

  CardWidget({
    required this.imageUrl,
    required this.name,
    required this.job,
    required this.isOnline,
    required this.messagetime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250.w,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 15.w,
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
            radius: 35,
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 15.h,
                ),
                Expanded(child: Text(name, style: textTheme.labelMedium)),
                SizedBox(height: 5),
                Expanded(
                  child: Container(
                    child: Text(
                      job.length <= 20 ? job : job.substring(0, 10) + "...",
                      style: textTheme.labelSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 24.h,
                    width: 24.w,
                    child: Icon(Icons.keyboard_arrow_right)),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  messagetime,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
