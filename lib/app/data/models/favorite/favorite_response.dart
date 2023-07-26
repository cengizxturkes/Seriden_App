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
  @JsonKey(name: "ad_id")
  String adId;
  @JsonKey(name: "user_id")
  String userId;
  @JsonKey(name: "created_at")
  String createdAt;

  Favorite({
    required this.id,
    required this.adId,
    required this.userId,
    required this.createdAt,
  });

  factory Favorite.fromJson(Map<String, dynamic> json) =>
      _$FavoriteFromJson(json);

  Map<String, dynamic> toJson() => _$FavoriteToJson(this);
}
