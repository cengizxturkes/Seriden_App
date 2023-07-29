import 'package:meta/meta.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'message_response.g.dart';

MessageResponse messageResponseFromJson(String str) =>
    MessageResponse.fromJson(json.decode(str));

String messageResponseToJson(MessageResponse data) =>
    json.encode(data.toJson());

@HiveType(typeId: 1)
@JsonSerializable()
class MessageResponse {
  @HiveField(1)
  @JsonKey(name: "status")
  int status;
  @HiveField(3)
  @JsonKey(name: "message")
  String message;
  @HiveField(5)
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

@HiveType(typeId: 2)
@JsonSerializable()
class Message {
  @HiveField(1)
  @JsonKey(name: "id")
  String id;
  @HiveField(3)
  @JsonKey(name: "from_user_id")
  String fromUserId;
  @HiveField(5)
  @JsonKey(name: "to_user_id")
  String toUserId;
  @HiveField(7)
  @JsonKey(name: "message")
  String message;
  @HiveField(9)
  @JsonKey(name: "ad_id")
  String adId;
  @HiveField(11)
  @JsonKey(name: "seen")
  String seen;
  @HiveField(13)
  @JsonKey(name: "created_at")
  String createdAt;
  @HiveField(15)
  @JsonKey(name: "title")
  String title;
  @HiveField(17)
  @JsonKey(name: "name_surname")
  String nameSurname;

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
  });

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
