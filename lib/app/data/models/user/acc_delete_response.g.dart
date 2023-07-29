// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acc_delete_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccDeleteResponse _$AccDeleteResponseFromJson(Map<String, dynamic> json) =>
    AccDeleteResponse(
      status: json['status'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$AccDeleteResponseToJson(AccDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
