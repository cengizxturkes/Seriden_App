import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'add_favorite_post.g.dart';

AddFavoritePost addFavoritePostFromJson(String str) =>
    AddFavoritePost.fromJson(json.decode(str));

String addFavoritePostToJson(AddFavoritePost data) =>
    json.encode(data.toJson());

@JsonSerializable()
class AddFavoritePost {
  @JsonKey(name: "ad_id")
  int adId;
  @JsonKey(name: "user_id")
  int userId;

  AddFavoritePost({
    required this.adId,
    required this.userId,
  });

  factory AddFavoritePost.fromJson(Map<String, dynamic> json) =>
      _$AddFavoritePostFromJson(json);

  Map<String, dynamic> toJson() => _$AddFavoritePostToJson(this);
}
