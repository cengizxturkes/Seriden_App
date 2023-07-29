import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'message_detail_response.g.dart';

MessageDetailResponse messageDetailResponseFromJson(String str) =>
    MessageDetailResponse.fromJson(json.decode(str));

String messageDetailResponseToJson(MessageDetailResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class MessageDetailResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<MessagDetail> data;

  MessageDetailResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory MessageDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MessageDetailResponseToJson(this);
}

@JsonSerializable()
class MessagDetail {
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
  @JsonKey(name: "name_surname")
  String nameSurname;
  @JsonKey(name: "photo")
  String photo;

  MessagDetail({
    required this.id,
    required this.fromUserId,
    required this.toUserId,
    required this.message,
    required this.adId,
    required this.seen,
    required this.createdAt,
    required this.nameSurname,
    required this.photo,
  });

  factory MessagDetail.fromJson(Map<String, dynamic> json) =>
      _$MessagDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MessagDetailToJson(this);
}
