// To parse this JSON data, do
//
//     final updateUserModel = updateUserModelFromJson(jsonString);

import 'dart:io';

import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'update_user_model.g.dart';

UpdateUserModel updateUserModelFromJson(String str) => UpdateUserModel.fromJson(json.decode(str));

String updateUserModelToJson(UpdateUserModel data) => json.encode(data.toJson());

@JsonSerializable()
class UpdateUserModel {
    @JsonKey(name:"id")
    String id;
    @JsonKey(name:"name_surname")
    String nameSurname;
    @JsonKey(name:"phone")
    String phone;
    @JsonKey(name:"photo")
    String? photo;

    UpdateUserModel({
        required this.id,
        required this.nameSurname,
        required this.phone,
        this.photo,
    });

    factory UpdateUserModel.fromJson(Map<String, dynamic> json,) => _$UpdateUserModelFromJson(json);

    Map<String, dynamic> toJson() => _$UpdateUserModelToJson(this);
}
