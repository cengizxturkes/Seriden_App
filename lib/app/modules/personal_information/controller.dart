import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/local/my_hive.dart';
import '../../data/models/user/user_response.dart';
import '../../repositories/user_repository.dart';
import 'index.dart';

class PersonalInformationController extends GetxController with UserRepository {
  PersonalInformationController();

  final state = PersonalInformationState();
  TextEditingController usercontroller = TextEditingController();


  TextEditingController userName=TextEditingController();
  TextEditingController phone=TextEditingController();
  File? userImage;



  String _previousValueUserName = '';
  String _previousValueUserPhone = '';


  

  var user = MyHive.getCurrentUser();


    void onTextChanged() {
    // Değişiklikler yapılırken eski değeri saklayın
    _previousValueUserName = userName.text;
    _previousValueUserPhone=phone.text;

  }

  void onEditingComplete() {
    // Klavyeden "Ok" tuşuna basıldığında eski değeri tekrar set edin
    userName.text = _previousValueUserName;
    phone.text = _previousValueUserPhone;

    // Klavyeyi kapatmak için focus'u kaldırın
    FocusScope.of(Get.context!).unfocus();
  }
  
  
  final String lastid = "";

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
    userName.addListener(onTextChanged);
    phone.addListener(onTextChanged);

   
  userName.text=user!.nameSurname;
  phone.text=user!.phone;


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


 
}
