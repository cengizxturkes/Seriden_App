// To parse this JSON data, do
//
//     final advertisePostModel = advertisePostModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'advertise_post_model.g.dart';

AdvertisePostModel advertisePostModelFromJson(String str) => AdvertisePostModel.fromJson(json.decode(str));

String advertisePostModelToJson(AdvertisePostModel data) => json.encode(data.toJson());

@JsonSerializable()
class AdvertisePostModel {
    @JsonKey(name:"status")
    int status;
    @JsonKey(name:"message")
    String message;
    @JsonKey(name:"data")
    Data data;

    AdvertisePostModel({
        required this.status,
        required this.message,
        required this.data,
    });

    factory AdvertisePostModel.fromJson(Map<String, dynamic> json) => _$AdvertisePostModelFromJson(json);

    Map<String, dynamic> toJson() => _$AdvertisePostModelToJson(this);
}

@JsonSerializable()
class Data {
    @JsonKey(name:"title")
    String title;
    @JsonKey(name:"description")
    String description;
    @JsonKey(name:"price")
    String price;
    @JsonKey(name:"user_id")
    String userId;
    @JsonKey(name:"sub_cat_id")
    String subCatId;
    @JsonKey(name:"image")
    List<Image> image;
    @JsonKey(name:"props")
    List<Prop> props;

    Data({
        required this.title,
        required this.description,
        required this.price,
        required this.userId,
        required this.subCatId,
        required this.image,
        required this.props,
    });

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

    Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Image {
    @JsonKey(name:"id")
    String id;
    @JsonKey(name:"url")
    String url;
    @JsonKey(name:"ad_id")
    String adId;
    @JsonKey(name:"is_active")
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
    @JsonKey(name:"value")
    String value;
    @JsonKey(name:"title")
    String title;

    Prop({
        required this.value,
        required this.title,
    });

    factory Prop.fromJson(Map<String, dynamic> json) => _$PropFromJson(json);

    Map<String, dynamic> toJson() => _$PropToJson(this);
}
