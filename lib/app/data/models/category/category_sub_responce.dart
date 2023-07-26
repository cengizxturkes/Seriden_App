import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'category_sub_responce.g.dart';

CategorySubResponce categorySubResponceFromJson(String str) =>
    CategorySubResponce.fromJson(json.decode(str));

String categorySubResponceToJson(CategorySubResponce data) =>
    json.encode(data.toJson());

@JsonSerializable()
class CategorySubResponce {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<Category> data;

  CategorySubResponce({
    required this.status,
    required this.message,
    required this.data,
  });

  factory CategorySubResponce.fromJson(Map<String, dynamic> json) =>
      _$CategorySubResponceFromJson(json);

  Map<String, dynamic> toJson() => _$CategorySubResponceToJson(this);
}

@JsonSerializable()
class Category {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "subcategories")
  List<Subcategory> subcategories;

  Category({
    required this.id,
    required this.name,
    required this.subcategories,
  });

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Subcategory {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "cat_id")
  String catId;
  @JsonKey(name: "is_active")
  String isActive;

  Subcategory({
    required this.id,
    required this.name,
    required this.catId,
    required this.isActive,
  });

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);

  Map<String, dynamic> toJson() => _$SubcategoryToJson(this);
}
