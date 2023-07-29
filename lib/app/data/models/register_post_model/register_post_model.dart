import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'register_post_model.g.dart';

RegisterPostModel registerPostModelFromJson(String str) =>
    RegisterPostModel.fromJson(json.decode(str));

String registerPostModelToJson(RegisterPostModel data) =>
    json.encode(data.toJson());

@JsonSerializable()
class RegisterPostModel {
  @JsonKey(name: "name_surname")
  String nameSurname;
  @JsonKey(name: "mail")
  String mail;
  @JsonKey(name: "phone")
  String phone;
  @JsonKey(name: "password")
  String password;

  RegisterPostModel({
    required this.nameSurname,
    required this.mail,
    required this.phone,
    required this.password,
  });

  factory RegisterPostModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterPostModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterPostModelToJson(this);
}
