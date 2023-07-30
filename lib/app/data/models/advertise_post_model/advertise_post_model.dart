// To parse this JSON AdvertisePostData, do
//
//     final advertisePostModel = advertisePostModelFromJson(jsonString);

import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/http.dart';
import 'dart:convert';

import 'adv_prop_data.dart';

part 'advertise_post_model.g.dart';

AdvertisePostModel advertisePostModelFromJson(String str) =>
    AdvertisePostModel.fromJson(json.decode(str));

String advertisePostModelToJson(AdvertisePostModel AdvertisePostData) =>
    json.encode(AdvertisePostData.toJson());

@JsonSerializable()
class AdvertisePostModel {
  @MultiPart()
  @JsonKey(name: "status")
  int status;
  @MultiPart()
  @JsonKey(name: "message")
  String message;
  @MultiPart()
  @JsonKey(name: "AdvertisePostData")
  AdvertisePostData advertisePostData;
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<File> images = [];
  AdvertisePostModel({
    required this.status,
    required this.message,
    required this.advertisePostData,
  });

  factory AdvertisePostModel.fromJson(Map<String, dynamic> json) =>
      _$AdvertisePostModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisePostModelToJson(this);
}

@JsonSerializable()
class AdvertisePostData {
  @MultiPart()
  @JsonKey(name: "title")
  String title;
  @MultiPart()
  @JsonKey(name: "description")
  String description;
  @MultiPart()
  @JsonKey(name: "price")
  double price;
  @MultiPart()
  @JsonKey(name: "user_id")
  String userId;
  @MultiPart()
  @JsonKey(name: "sub_cat_id")
  String subCatId;
  @MultiPart()
  @JsonKey(name: "props")
  List<AdvPropData> props;

  AdvertisePostData({
    required this.title,
    required this.description,
    required this.price,
    required this.userId,
    required this.subCatId,
    required this.props,
  });

  factory AdvertisePostData.fromJson(Map<String, dynamic> json) =>
      _$AdvertisePostDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisePostDataToJson(this);
}

@JsonSerializable()
class Image {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "url")
  String url;
  @JsonKey(name: "ad_id")
  String adId;
  @JsonKey(name: "is_active")
  String isActive;

  Image({
    required this.id,
    required this.url,
    required this.adId,
    required this.isActive,
  });

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  Map<String, dynamic> toJson() => _$ImageToJson(this);
}

@JsonSerializable()
class Prop {
  @JsonKey(name: "value")
  String value;
  @JsonKey(name: "title")
  String title;

  Prop({
    required this.value,
    required this.title,
  });

  factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);

  Map<String, dynamic> toJson() => _$PropToJson(this);
}
