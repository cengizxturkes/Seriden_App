// To parse this JSON data, do
//
//     final advPropData = advPropDataFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'adv_prop_data.g.dart';

AdvPropData advPropDataFromJson(String str) =>
    AdvPropData.fromJson(json.decode(str));

String advPropDataToJson(AdvPropData data) => json.encode(data.toJson());

@JsonSerializable()
class AdvPropData {
  @JsonKey(name: "id")
  String id;

  @JsonKey(
    name: "cat_id",
  )
  String catId;
  @JsonKey(name: "value")
  String description;

  AdvPropData({
    required this.id,
    required this.catId,
    required this.description,
  });

  factory AdvPropData.fromJson(Map<String, dynamic> json) =>
      _$AdvPropDataFromJson(json);

  Map<String, dynamic> toJson() => _$AdvPropDataToJson(this);
}
