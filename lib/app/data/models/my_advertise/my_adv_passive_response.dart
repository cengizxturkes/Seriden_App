import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'my_adv_passive_response.g.dart';

MyAdvPassiveResponse myAdvPassiveResponseFromJson(String str) =>
    MyAdvPassiveResponse.fromJson(json.decode(str));

String myAdvPassiveResponseToJson(MyAdvPassiveResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class MyAdvPassiveResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<MyAdverisePassive> data;

  MyAdvPassiveResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory MyAdvPassiveResponse.fromJson(Map<String, dynamic> json) =>
      _$MyAdvPassiveResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MyAdvPassiveResponseToJson(this);
}

@JsonSerializable()
class MyAdverisePassive {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "price")
  String price;
  @JsonKey(name: "user_id")
  String userId;
  @JsonKey(name: "sub_cat_id")
  String subCatId;
  @JsonKey(name: "created_at")
  String createdAt;
  @JsonKey(name: "is_active")
  String isActive;

  MyAdverisePassive({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.userId,
    required this.subCatId,
    required this.createdAt,
    required this.isActive,
  });

  factory MyAdverisePassive.fromJson(Map<String, dynamic> json) =>
      _$MyAdverisePassiveFromJson(json);

  Map<String, dynamic> toJson() => _$MyAdverisePassiveToJson(this);
}
