import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'login_response.g.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "user_id")
  String userId;

  LoginResponse({
    required this.status,
    required this.message,
    required this.userId,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
