// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageDetailResponse _$MessageDetailResponseFromJson(
        Map<String, dynamic> json) =>
    MessageDetailResponse(
      status: json['status'] as int,
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => MessageDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MessageDetailResponseToJson(
        MessageDetailResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

MessageDetail _$MessageDetailFromJson(Map<String, dynamic> json) =>
    MessageDetail(
      id: json['id'] as String,
      fromUserId: json['from_user_id'] as String,
      toUserId: json['to_user_id'] as String,
      message: json['message'] as String,
      adId: json['ad_id'] as String,
      seen: json['seen'] as String,
      createdAt: json['created_at'] as String,
      nameSurname: json['name_surname'] as String,
      photo: json['photo'] as String,
    );

Map<String, dynamic> _$MessageDetailToJson(MessageDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from_user_id': instance.fromUserId,
      'to_user_id': instance.toUserId,
      'message': instance.message,
      'ad_id': instance.adId,
      'seen': instance.seen,
      'created_at': instance.createdAt,
      'name_surname': instance.nameSurname,
      'photo': instance.photo,
    };
