import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'add_favorite_response.g.dart';

AddFavoriteResponse addFavoriteResponseFromJson(String str) =>
    AddFavoriteResponse.fromJson(json.decode(str));

String addFavoriteResponseToJson(AddFavoriteResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class AddFavoriteResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;

  AddFavoriteResponse({
    required this.status,
    required this.message,
  });

  factory AddFavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$AddFavoriteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddFavoriteResponseToJson(this);
}
