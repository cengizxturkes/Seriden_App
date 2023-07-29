// To parse this JSON data, do
//
//     final sendMessageResponse = sendMessageResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'send_message_response.g.dart';

SendMessageResponse sendMessageResponseFromJson(String str) =>
    SendMessageResponse.fromJson(json.decode(str));

String sendMessageResponseToJson(SendMessageResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class SendMessageResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;

  SendMessageResponse({
    required this.status,
    required this.message,
  });

  factory SendMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$SendMessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SendMessageResponseToJson(this);
}
