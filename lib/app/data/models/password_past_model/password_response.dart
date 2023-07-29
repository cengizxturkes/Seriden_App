import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'password_response.g.dart';

PasswordResponse passwordResponseFromJson(String str) =>
    PasswordResponse.fromJson(json.decode(str));

String passwordResponseToJson(PasswordResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class PasswordResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;

  PasswordResponse({
    required this.status,
    required this.message,
  });

  factory PasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$PasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordResponseToJson(this);
}
