// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteResponse _$FavoriteResponseFromJson(Map<String, dynamic> json) =>
    FavoriteResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Favorite.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FavoriteResponseToJson(FavoriteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

Favorite _$FavoriteFromJson(Map<String, dynamic> json) => Favorite(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      userId: json['user_id'] as String,
      subCatId: json['sub_cat_id'] as String,
      createdAt: json['created_at'] as String,
      isActive: json['is_active'] as String,
      url: json['url'] as String,
      nameSurname: json['name_surname'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$FavoriteToJson(Favorite instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'user_id': instance.userId,
      'sub_cat_id': instance.subCatId,
      'created_at': instance.createdAt,
      'is_active': instance.isActive,
      'url': instance.url,
      'name_surname': instance.nameSurname,
      'email': instance.email,
      'phone': instance.phone,
    };
