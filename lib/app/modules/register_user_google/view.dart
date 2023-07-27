import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class RegisterUserGooglePage extends GetView<RegisterUserGoogleController> {
  const RegisterUserGooglePage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterUserGoogleController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("register_user_google")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
