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
  @JsonKey(name: "name")
  String name;
  @JsonKey(name: "surname")
  String surname;
  @JsonKey(name: "mail")
  String mail;
  @JsonKey(name: "phone")
  String phone;
  @JsonKey(name: "password")
  String password;
  @JsonKey(name: "token")
  String token;

  RegisterPostModel({
    required this.name,
    required this.surname,
    required this.mail,
    required this.phone,
    required this.password,
    required this.token,
  });

  factory RegisterPostModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterPostModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterPostModelToJson(this);
}
