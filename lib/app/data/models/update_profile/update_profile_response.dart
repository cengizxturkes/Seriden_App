import 'package:meta/meta.dart';
import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'update_profile_response.g.dart';

UpdateProfileResponse updateProfileResponseFromJson(String str) =>
    UpdateProfileResponse.fromJson(json.decode(str));

String updateProfileResponseToJson(UpdateProfileResponse data) =>
    json.encode(data.toJson());

@JsonSerializable()
class UpdateProfileResponse {
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String message;

  UpdateProfileResponse({
    required this.status,
    required this.message,
  });

  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileResponseToJson(this);
}
