// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertise_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvertisePostModel _$AdvertisePostModelFromJson(Map<String, dynamic> json) =>
    AdvertisePostModel(
      status: json['status'] as int,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdvertisePostModelToJson(AdvertisePostModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      userId: json['user_id'] as String,
      subCatId: json['sub_cat_id'] as String,
      image: (json['image'] as List<dynamic>)
          .map((e) => Image.fromJson(e as Map<String, dynamic>))
          .toList(),
      props: (json['props'] as List<dynamic>)
          .map((e) => Prop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'user_id': instance.userId,
      'sub_cat_id': instance.subCatId,
      'image': instance.image,
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
