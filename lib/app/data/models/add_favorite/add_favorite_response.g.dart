// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_favorite_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddFavoriteResponse _$AddFavoriteResponseFromJson(Map<String, dynamic> json) =>
    AddFavoriteResponse(
      status: json['status'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$AddFavoriteResponseToJson(
        AddFavoriteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
