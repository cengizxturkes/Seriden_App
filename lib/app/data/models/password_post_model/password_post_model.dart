import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'password_post_model.g.dart';

PasswordPostModel passwordPostModelFromJson(String str) =>
    PasswordPostModel.fromJson(json.decode(str));

String passwordPostModelToJson(PasswordPostModel data) =>
    json.encode(data.toJson());

@JsonSerializable()
class PasswordPostModel {
  @JsonKey(name: "id")
  int id;
  @JsonKey(name: "oldpass")
  String oldpass;
  @JsonKey(name: "newpass")
  String newpass;

  PasswordPostModel({
    required this.id,
    required this.oldpass,
    required this.newpass,
  });

  factory PasswordPostModel.fromJson(Map<String, dynamic> json) =>
      _$PasswordPostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PasswordPostModelToJson(this);
}
