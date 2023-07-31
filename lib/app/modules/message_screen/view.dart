import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/local/my_hive.dart';
import 'package:getx_skeleton/app/data/models/message/message_detail_response.dart';
import 'package:getx_skeleton/app/data/models/message/message_response.dart';

import '../../../config/theme/my_fonts.dart';
import '../../components/color_manager.dart';
import '../../components/custom_future_builder.dart';
import '../../repositories/message_repository.dart';
import '../home/views/home_view.dart';
import '../messages/view.dart';
import 'index.dart';
import 'widgets/widgets.dart';

class MessageScreenPage extends GetView<MessageScreenController> {
  MessageScreenPage({Key? key}) : super(key: key);
  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  ScrollController scrollScontroller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var arguments = MessageScreenController.lastMessage;
    if (Get.arguments is Message) {
      arguments = Get.arguments as Message;
    }
    var login = MyHive.getCurrentUser();
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
                        arguments!.nameSurname + " İle Mesajlaşma",
                        style: TextStyle(
                            fontFamily: "Gilroy", color: Color(0xff343434)),
                      ),
                    ],
                  )),
              Flexible(
                  child: CustomFutureBuilder<List<MessagDetail>>(
                future: controller.getMessageDetail(arguments.id),
                onError: (msg) => Text(msg),
                onloading: controller.messages.isEmpty
                    ? null
                    : () {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.messages.length,
                          controller: scrollScontroller,
                          itemBuilder: ((context, index) {
                            TextEditingController controllertext =
                                TextEditingController();
                            var myAdv = controller.messages[index];

                            if (login!.id == myAdv.fromUserId) {
                              return Column(
                                children: [
                                  Sender(
                                    messagDetail: myAdv,
                                  ),
                                ],
                              );
                            } else {
                              return Reciever(
                                messagDetail: myAdv,
                              );
                            }
                          }),
                        );
                      },
                onSuccess: (data) {
                  scrollToBotom();
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: data.length,
                    controller: scrollScontroller,
                    itemBuilder: ((context, index) {
                      var message = data[index];

                      if (login!.id == message.fromUserId) {
                        return Column(
                          children: [
                            Sender(
                              messagDetail: message,
                            ),
                          ],
                        );
                      } else {
                        return Reciever(
                          messagDetail: message,
                        );
                      }
                    }),
                  );
                },
                onDataEmpty: () {
                  return Center(child: Text("Mesaj bulunamadı"));
                },
              )),
              SizedBox(
                height: 15.h,
              ),
              Spacer(),
              createTextBox(
                  "", controller.setMessage, controller.messageModel.message,
                  () async {
                await controller.send(arguments!);
                scrollToBotom();

                controller.update();
              }),
            ],
          )),
        );
      },
    );
  }

  void scrollToBotom() {
    Future.delayed(300.milliseconds).then((value) {
      try {
        scrollScontroller.animateTo(
          scrollScontroller.position.maxScrollExtent,
          duration: 1.milliseconds,
          curve: Curves.fastOutSlowIn,
        );
      } catch (e) {}
    });
  }
}

class Sender extends StatelessWidget {
  MessagDetail messagDetail;
  Sender({
    required this.messagDetail,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                        left: 15.w, right: 15.w, top: 10.h, bottom: 10.h),
                    child: Text(
                      messagDetail.message,
                      style: TextStyle(fontSize: 12, fontFamily: "Gilroy"),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(messagDetail.photo),
                radius: 35,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Reciever extends StatelessWidget {
  MessagDetail messagDetail;

  Reciever({
    required this.messagDetail,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, right: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(messagDetail.photo),
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
                        left: 15.w, right: 15.w, top: 10.h, bottom: 10.h),
                    child: Text(
                      messagDetail.message,
                      style: TextStyle(fontSize: 12, fontFamily: "Gilroy"),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget createTextBox(
  String title,
  Function(String value) textChange,
  String value,
  Function sendMessage,
) {
  var controller = TextEditingController(text: value);
  controller.addListener(() {
    textChange(controller.text);
  });

  return Padding(
    padding: EdgeInsets.only(bottom: 20.h),
    child: Container(
        width: 355.w,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(width: 4, color: Color(0xff0075FF)),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: TextFormField(
                  controller: controller,
                  decoration: InputDecoration(
                    hintText: "Bir Şeyler Yaz",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                sendMessage();
              },
              child: Container(child: Icon(Icons.send)),
            )
          ],
        )),
  );
}
