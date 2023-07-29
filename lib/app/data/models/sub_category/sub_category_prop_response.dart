import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'sub_category_prop_response.g.dart';

SubCategoryPropResponse subCategoryPropResponseFromJson(String str) =>
    SubCategoryPropResponse.fromJson(json.decode(str));

String subCategoryPropResponseToJson(SubCategoryPropResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class SubCategoryPropResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<SubcategoryProp> data;

  SubCategoryPropResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory SubCategoryPropResponse.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryPropResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubCategoryPropResponseToJson(this);
}

@JsonSerializable()
class SubcategoryProp {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "cat_id")
  String catId;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "value_type")
  String valueType;

  SubcategoryProp({
    required this.id,
    required this.catId,
    required this.title,
    required this.valueType,
  });

  factory SubcategoryProp.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryPropFromJson(json);

  Map<String, dynamic> toJson() => _$SubcategoryPropToJson(this);
}
