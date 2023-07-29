import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'send_message_post.g.dart';

SendMessagePost sendMessagePostFromJson(String str) =>
    SendMessagePost.fromJson(json.decode(str));

String sendMessagePostToJson(SendMessagePost data) =>
    json.encode(data.toJson());

@JsonSerializable()
class SendMessagePost {
  @JsonKey(name: "from_user_id")
  int fromUserId;
  @JsonKey(name: "to_user_id")
  int toUserId;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "ad_id")
  int adId;

  SendMessagePost({
    required this.fromUserId,
    required this.toUserId,
    required this.message,
    required this.adId,
  });

  factory SendMessagePost.fromJson(Map<String, dynamic> json) =>
      _$SendMessagePostFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessagePostToJson(this);
}
