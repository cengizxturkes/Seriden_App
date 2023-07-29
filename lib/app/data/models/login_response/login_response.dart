import 'package:meta/meta.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'login_response.g.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

@HiveType(typeId: 1)
@JsonSerializable()
class LoginResponse {
  @HiveField(1)
  @JsonKey(name: "status")
  int status;
  @HiveField(3)
  @JsonKey(name: "message")
  String message;
  @HiveField(5)
  @JsonKey(name: "data")
  Login data;

  LoginResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@HiveType(typeId: 2)
@JsonSerializable()
class Login {
  @HiveField(1)
  @JsonKey(name: "id")
  String id;
  @HiveField(3)
  @JsonKey(name: "name_surname")
  String nameSurname;
  @HiveField(5)
  @JsonKey(name: "email")
  String email;
  @HiveField(7)
  @JsonKey(name: "phone")
  String phone;
  @HiveField(9)
  @JsonKey(name: "photo")
  String photo;
  @HiveField(11)
  @JsonKey(name: "password")
  String password;
  @HiveField(13)
  @JsonKey(name: "token")
  String token;
  @HiveField(15)
  @JsonKey(name: "created_at")
  String createdAt;
  @HiveField(17)
  @JsonKey(name: "status")
  String status;

  Login({
    required this.id,
    required this.nameSurname,
    required this.email,
    required this.phone,
    required this.photo,
    required this.password,
    required this.token,
    required this.createdAt,
    required this.status,
  });

  factory Login.fromJson(Map<String, dynamic> json) => _$LoginFromJson(json);

  Map<String, dynamic> toJson() => _$LoginToJson(this);
}
