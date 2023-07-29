import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'acc_delete_response.g.dart';

AccDeleteResponse accDeleteResponseFromJson(String str) =>
    AccDeleteResponse.fromJson(json.decode(str));

String accDeleteResponseToJson(AccDeleteResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class AccDeleteResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;

  AccDeleteResponse({
    required this.status,
    required this.message,
  });

  factory AccDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AccDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccDeleteResponseToJson(this);
}
