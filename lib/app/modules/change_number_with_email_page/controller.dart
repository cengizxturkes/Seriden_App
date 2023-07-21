import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'index.dart';

class ChangeNumberWithEmailPageController extends GetxController {
  ChangeNumberWithEmailPageController();
  int secondsRemaining = 150;
  int countdown = 150;
  //int minutesRemaining = secondsRemaining ~/ 60;
  final state = ChangeNumberWithEmailPageState();
  TextEditingController code=TextEditingController();
  // tap
  void handleTap(int index) {
    Get.snackbar(
      "标题",
      "消息",
    );
  }

  /// 在 widget 内存中分配后立即调用。
  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  /// 在 onInit() 之后调用 1 帧。这是进入的理想场所
  @override
  void onReady() {
    super.onReady();
  }

  /// 在 [onDelete] 方法之前调用。
  @override
  void onClose() {
    super.onClose();
  }

  /// dispose 释放内存
  @override
  void dispose() {
    super.dispose();
  }

  void startTimer() {
    // Timer.periodic(Duration(seconds: 1), (timer) {
    //   if (secondsRemaining > 0) {
    //     secondsRemaining--;
    //     //minutesRemaining = secondsRemaining ~/ 60;
    //     update();
    //   } else {
    //     timer.cancel();
    //   }
    // });
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (countdown > 0) {
        countdown--;
        update();
      } else {
        timer.cancel();
      }
      update();
    });
  }
}
