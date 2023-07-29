// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_prop_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubCategoryPropResponse _$SubCategoryPropResponseFromJson(
        Map<String, dynamic> json) =>
    SubCategoryPropResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => SubcategoryProp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubCategoryPropResponseToJson(
        SubCategoryPropResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

SubcategoryProp _$SubcategoryPropFromJson(Map<String, dynamic> json) =>
    SubcategoryProp(
      id: json['id'] as String,
      catId: json['cat_id'] as String,
      title: json['title'] as String,
      valueType: json['value_type'] as String,
    );

Map<String, dynamic> _$SubcategoryPropToJson(SubcategoryProp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cat_id': instance.catId,
      'title': instance.title,
      'value_type': instance.valueType,
    };
