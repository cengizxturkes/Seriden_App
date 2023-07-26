import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'advertise_post_model.g.dart';

AdvertisePostModel advertisePostModelFromJson(String str) =>
    AdvertisePostModel.fromJson(json.decode(str));

String advertisePostModelToJson(AdvertisePostModel data) =>
    json.encode(data.toJson());

@JsonSerializable()
class AdvertisePostModel {
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "price")
  int price;
  @JsonKey(name: "user_id")
  int userId;
  @JsonKey(name: "sub_cat_id")
  int subCatId;

  AdvertisePostModel({
    required this.title,
    required this.description,
    required this.price,
    required this.userId,
    required this.subCatId,
  });

  factory AdvertisePostModel.fromJson(Map<String, dynamic> json) =>
      _$AdvertisePostModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisePostModelToJson(this);
}
