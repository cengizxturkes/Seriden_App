// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendMessagePost _$SendMessagePostFromJson(Map<String, dynamic> json) =>
    SendMessagePost(
      fromUserId: json['from_user_id'] as int,
      toUserId: json['to_user_id'] as int,
      message: json['message'] as String,
      adId: json['ad_id'] as int,
    );

Map<String, dynamic> _$SendMessagePostToJson(SendMessagePost instance) =>
    <String, dynamic>{
      'from_user_id': instance.fromUserId,
      'to_user_id': instance.toUserId,
      'message': instance.message,
      'ad_id': instance.adId,
    };
