import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/advertise/index.dart';
import 'package:getx_skeleton/app/modules/home/views/home_view.dart';

import '../../../../utils/constants.dart';
import '../../../repositories/category_sub_items_repository.dart';
import '../../../services/api_call_status.dart';
import '../../../services/base_client.dart';

class HomeController extends GetxController with CategorySubItemsRepository {
  // hold data coming from api

  @override
  void onInit() {
    super.onInit();
  }
}
