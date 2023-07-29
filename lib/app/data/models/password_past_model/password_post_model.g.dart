// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PasswordPostModel _$PasswordPostModelFromJson(Map<String, dynamic> json) =>
    PasswordPostModel(
      id: json['id'] as int,
      oldpass: json['oldpass'] as String,
      newpass: json['newpass'] as String,
    );

Map<String, dynamic> _$PasswordPostModelToJson(PasswordPostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'oldpass': instance.oldpass,
      'newpass': instance.newpass,
    };
