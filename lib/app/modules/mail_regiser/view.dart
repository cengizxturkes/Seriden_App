import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';
import 'widgets/widgets.dart';

class MailRegiserPage extends GetView<MailRegiserController> {
  const MailRegiserPage({Key? key}) : super(key: key);

  // 主视图
  Widget _buildView() {
    return const HelloWidget();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MailRegiserController>(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text("mail_regiser")),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
