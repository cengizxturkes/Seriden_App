// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterPostModel _$RegisterPostModelFromJson(Map<String, dynamic> json) =>
    RegisterPostModel(
      nameSurname: json['name_surname'] as String,
      mail: json['mail'] as String,
      phone: json['phone'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$RegisterPostModelToJson(RegisterPostModel instance) =>
    <String, dynamic>{
      'name_surname': instance.nameSurname,
      'mail': instance.mail,
      'phone': instance.phone,
      'password': instance.password,
    };
