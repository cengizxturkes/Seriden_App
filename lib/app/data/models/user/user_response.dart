import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'user_response.g.dart';

UserResponse userResponseFromJson(String str) =>
    UserResponse.fromJson(json.decode(str));

String userResponseToJson(UserResponse data) => json.encode(data.toJson());

@JsonSerializable()
class UserResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  User data;

  UserResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "name_surname")
  String nameSurname;
  @JsonKey(name: "email")
  String email;
  @JsonKey(name: "phone")
  String phone;
  @JsonKey(name: "photo")
  String photo;
  @JsonKey(name: "password")
  String password;
  @JsonKey(name: "token")
  String token;
  @JsonKey(name: "created_at")
  String createdAt;
  @JsonKey(name: "status")
  String status;

  User({
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

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
