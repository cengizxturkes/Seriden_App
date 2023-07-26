// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_sub_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorySubResponce _$CategorySubResponceFromJson(Map<String, dynamic> json) =>
    CategorySubResponce(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategorySubResponceToJson(
        CategorySubResponce instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as String,
      name: json['name'] as String,
      subcategories: (json['subcategories'] as List<dynamic>)
          .map((e) => Subcategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'subcategories': instance.subcategories,
    };

Subcategory _$SubcategoryFromJson(Map<String, dynamic> json) => Subcategory(
      id: json['id'] as String,
      name: json['name'] as String,
      catId: json['cat_id'] as String,
      isActive: json['is_active'] as String,
    );

Map<String, dynamic> _$SubcategoryToJson(Subcategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cat_id': instance.catId,
      'is_active': instance.isActive,
    };
