// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_adv_passive_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyAdvPassiveResponse _$MyAdvPassiveResponseFromJson(
        Map<String, dynamic> json) =>
    MyAdvPassiveResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => MyAdverisePassive.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyAdvPassiveResponseToJson(
        MyAdvPassiveResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

MyAdverisePassive _$MyAdverisePassiveFromJson(Map<String, dynamic> json) =>
    MyAdverisePassive(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      userId: json['user_id'] as String,
      subCatId: json['sub_cat_id'] as String,
      createdAt: json['created_at'] as String,
      isActive: json['is_active'] as String,
    );

Map<String, dynamic> _$MyAdverisePassiveToJson(MyAdverisePassive instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'user_id': instance.userId,
      'sub_cat_id': instance.subCatId,
      'created_at': instance.createdAt,
      'is_active': instance.isActive,
    };
