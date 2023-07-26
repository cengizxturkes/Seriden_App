import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class RegisterPhoneNumberPage extends GetView<RegisterPhoneNumberController> {
  const RegisterPhoneNumberPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterPhoneNumberController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("register_phone_number")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
