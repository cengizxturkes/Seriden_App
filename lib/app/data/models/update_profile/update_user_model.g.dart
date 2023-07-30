// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserModel _$UpdateUserModelFromJson(Map<String, dynamic> json) =>
    UpdateUserModel(
      id: json['id'] as String,
      nameSurname: json['name_surname'] as String,
      phone: json['phone'] as String,
      photo: json['photo'] as String?,
    );

Map<String, dynamic> _$UpdateUserModelToJson(UpdateUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_surname': instance.nameSurname,
      'phone': instance.phone,
      'photo': instance.photo,
    };
