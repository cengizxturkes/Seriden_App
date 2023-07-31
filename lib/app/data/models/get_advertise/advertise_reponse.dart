import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'advertise_reponse.g.dart';

AdvertiseReponse advertiseReponseFromJson(String str) =>
    AdvertiseReponse.fromJson(json.decode(str));

String advertiseReponseToJson(AdvertiseReponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class AdvertiseReponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<GetAdvertise>? data;

  AdvertiseReponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory AdvertiseReponse.fromJson(Map<String, dynamic> json) =>
      _$AdvertiseReponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertiseReponseToJson(this);
}

@JsonSerializable()
class GetAdvertise {
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
  @JsonKey(name: "url")
  String url;

  GetAdvertise({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.userId,
    required this.subCatId,
    required this.createdAt,
    required this.isActive,
    required this.url,
  });

  factory GetAdvertise.fromJson(Map<String, dynamic> json) =>
      _$GetAdvertiseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAdvertiseToJson(this);
}
