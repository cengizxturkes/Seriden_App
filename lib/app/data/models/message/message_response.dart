import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'message_response.g.dart';

MessageResponse messageResponseFromJson(String str) =>
    MessageResponse.fromJson(json.decode(str));

String messageResponseToJson(MessageResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class MessageResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<Message> data;

  MessageResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MessageResponseToJson(this);
}

@JsonSerializable()
class Message {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "from_user_id")
  String fromUserId;
  @JsonKey(name: "to_user_id")
  String toUserId;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "ad_id")
  String adId;
  @JsonKey(name: "seen")
  String seen;
  @JsonKey(name: "created_at")
  String createdAt;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "name_surname")
  String nameSurname;
  @JsonKey(name: "photo")
  String? photo;

  Message({
    required this.id,
    required this.fromUserId,
    required this.toUserId,
    required this.message,
    required this.adId,
    required this.seen,
    required this.createdAt,
    required this.title,
    required this.nameSurname,
    this.photo,
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
