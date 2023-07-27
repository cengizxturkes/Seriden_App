// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterPostModel _$RegisterPostModelFromJson(Map<String, dynamic> json) =>
    RegisterPostModel(
      name: json['name'] as String,
      surname: json['surname'] as String,
      mail: json['mail'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
      token: json['token'] as String,
    );

Map<String, dynamic> _$RegisterPostModelToJson(RegisterPostModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'surname': instance.surname,
      'mail': instance.mail,
      'phone': instance.phone,
      'password': instance.password,
      'token': instance.token,
    };
