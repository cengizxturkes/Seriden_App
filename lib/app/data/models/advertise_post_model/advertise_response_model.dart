import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'advertise_response_model.g.dart';

AdvertiseResponseModel advertiseResponseModelFromJson(String str) =>
    AdvertiseResponseModel.fromJson(json.decode(str));

String advertiseResponseModelToJson(AdvertiseResponseModel data) =>
    json.encode(data.toJson());

@JsonSerializable()
class AdvertiseResponseModel {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;

  AdvertiseResponseModel({
    required this.status,
    required this.message,
  });

  factory AdvertiseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AdvertiseResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertiseResponseModelToJson(this);
}
