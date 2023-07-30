// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertise_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvertisePostModel _$AdvertisePostModelFromJson(Map<String, dynamic> json) =>
    AdvertisePostModel(
      status: json['status'] as int,
      message: json['message'] as String,
      advertisePostData: AdvertisePostData.fromJson(
          json['AdvertisePostData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdvertisePostModelToJson(AdvertisePostModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'AdvertisePostData': instance.advertisePostData,
    };

AdvertisePostData _$AdvertisePostDataFromJson(Map<String, dynamic> json) =>
    AdvertisePostData(
      title: json['title'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      userId: json['user_id'] as String,
      subCatId: json['sub_cat_id'] as String,
      props: (json['props'] as List<dynamic>)
          .map((e) => AdvPropData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdvertisePostDataToJson(AdvertisePostData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'user_id': instance.userId,
      'sub_cat_id': instance.subCatId,
      'props': instance.props,
    };

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      id: json['id'] as String,
      url: json['url'] as String,
      adId: json['ad_id'] as String,
      isActive: json['is_active'] as String,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'ad_id': instance.adId,
      'is_active': instance.isActive,
    };

Prop _$PropFromJson(Map<String, dynamic> json) => Prop(
      value: json['value'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$PropToJson(Prop instance) => <String, dynamic>{
      'value': instance.value,
      'title': instance.title,
    };
