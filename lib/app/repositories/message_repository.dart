import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/local/my_hive.dart';
import '../data/models/message/message_detail_response.dart';
import '../data/models/message/message_response.dart';
import '../data/models/message/send_message_post.dart';
import '../services/user_service.dart';

class MessageRepository {
  UserService service = Get.find();
  MessageModel messageModel = MessageModel();
  void setMessage(String message) {
    messageModel.message = message;
  }

  Future<bool> send(Message messagDetail) async {
    var login = await MyHive.getCurrentUser();

    var deneme = SendMessagePost(
      adId: int.parse(messagDetail.adId),
      fromUserId: int.parse(login?.id ?? "0"),
      message: messageModel.message,
      toUserId: int.parse(messagDetail.toUserId),
    );
    var response = await service.sendMessage(deneme);
    var success = response.status == 1;
    if (success) {
      messageModel.message = "";
    }
    return success;
  }
}

class MessageModel {
  String message = "";
}
