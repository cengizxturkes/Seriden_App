import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'favorite_response.g.dart';

FavoriteResponse favoriteResponseFromJson(String str) =>
    FavoriteResponse.fromJson(json.decode(str));

String favoriteResponseToJson(FavoriteResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class FavoriteResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;
  @JsonKey(name: "data")
  List<Favorite> data;

  FavoriteResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory FavoriteResponse.fromJson(Map<String, dynamic> json) =>
      _$FavoriteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteResponseToJson(this);
}

@JsonSerializable()
class Favorite {
  @JsonKey(name: "id")
  String id;
  @JsonKey(name: "title")
  String title;
  @JsonKey(name: "description")
  String description;
  @JsonKey(name: "price")
  String price;
  @JsonKey(name: "user_id")
  String userId;
  @JsonKey(name: "sub_cat_id")
  String subCatId;
  @JsonKey(name: "created_at")
  String createdAt;
  @JsonKey(name: "is_active")
  String isActive;
  @JsonKey(name: "url")
  String url;
  @JsonKey(name: "name_surname")
  String nameSurname;
  @JsonKey(name: "email")
  String email;
  @JsonKey(name: "phone")
  String phone;

  Favorite({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.userId,
    required this.subCatId,
    required this.createdAt,
    required this.isActive,
    required this.url,
    required this.nameSurname,
    required this.email,
    required this.phone,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteToJson(this);
}
