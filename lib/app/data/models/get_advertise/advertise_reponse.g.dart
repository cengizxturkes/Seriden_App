// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertise_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvertiseReponse _$AdvertiseReponseFromJson(Map<String, dynamic> json) =>
    AdvertiseReponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetAdvertise.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdvertiseReponseToJson(AdvertiseReponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

GetAdvertise _$GetAdvertiseFromJson(Map<String, dynamic> json) => GetAdvertise(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      userId: json['user_id'] as String,
      subCatId: json['sub_cat_id'] as String,
      createdAt: json['created_at'] as String,
      isActive: json['is_active'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$GetAdvertiseToJson(GetAdvertise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'user_id': instance.userId,
      'sub_cat_id': instance.subCatId,
      'created_at': instance.createdAt,
      'is_active': instance.isActive,
      'url': instance.url,
    };
