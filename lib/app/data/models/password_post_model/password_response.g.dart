// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordResponse _$PasswordResponseFromJson(Map<String, dynamic> json) =>
    PasswordResponse(
      status: json['status'] as int,
      message: json['message'] as String,
    );

Map<String, dynamic> _$PasswordResponseToJson(PasswordResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
