import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'my_advertise_response.g.dart';

MyAdveriseResponse myAdveriseResponseFromJson(String str) =>
    MyAdveriseResponse.fromJson(json.decode(str));

String myAdveriseResponseToJson(MyAdveriseResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class MyAdveriseResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<MyAdverise> data;

  MyAdveriseResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory MyAdveriseResponse.fromJson(Map<String, dynamic> json) =>
      _$MyAdveriseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MyAdveriseResponseToJson(this);
}

@JsonSerializable()
class MyAdverise {
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

  MyAdverise({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.userId,
    required this.subCatId,
    required this.createdAt,
    required this.isActive,
  });

  factory MyAdverise.fromJson(Map<String, dynamic> json) =>
      _$MyAdveriseFromJson(json);

  Map<String, dynamic> toJson() => _$MyAdveriseToJson(this);
}
