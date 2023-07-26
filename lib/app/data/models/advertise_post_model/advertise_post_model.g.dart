// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertise_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvertisePostModel _$AdvertisePostModelFromJson(Map<String, dynamic> json) =>
    AdvertisePostModel(
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      userId: json['user_id'] as int,
      subCatId: json['sub_cat_id'] as int,
    );

Map<String, dynamic> _$AdvertisePostModelToJson(AdvertisePostModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'user_id': instance.userId,
      'sub_cat_id': instance.subCatId,
    };
