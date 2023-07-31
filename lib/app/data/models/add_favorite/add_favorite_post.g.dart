// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favorite_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddFavoritePost _$AddFavoritePostFromJson(Map<String, dynamic> json) =>
    AddFavoritePost(
      adId: json['ad_id'] as int,
      userId: json['user_id'] as int,
    );

Map<String, dynamic> _$AddFavoritePostToJson(AddFavoritePost instance) =>
    <String, dynamic>{
      'ad_id': instance.adId,
      'user_id': instance.userId,
    };
