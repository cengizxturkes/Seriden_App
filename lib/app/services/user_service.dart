import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:getx_skeleton/app/data/models/message/send_message_response.dart';
import 'package:getx_skeleton/app/data/models/user_model.dart';
import 'package:retrofit/http.dart';

import '../data/models/add_favorite/add_favorite_post.dart';
import '../data/models/add_favorite/add_favorite_response.dart';
import '../data/models/login_model/login_model.dart';
import '../data/models/message/message_detail_response.dart';
import '../data/models/message/message_response.dart';
import '../data/models/message/send_message_post.dart';
import '../data/models/password_post_model/password_post_model.dart';
import '../data/models/password_post_model/password_response.dart';
import '../data/models/update_profile/update_profile_response.dart';
import '../data/models/update_profile/update_user_model.dart';
import '../data/models/user/acc_delete_response.dart';
import '../data/models/user/user_response.dart';

part 'user_service.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class UserService {
  factory UserService(Dio dio, {String baseUrl}) = _UserService;
  @POST("/getUser.php")
  Future<UserResponse> getUser(@Query("id") String id);
  @POST("/updatePass.php")
  Future<PasswordResponse> uptadePass(@Body() PasswordPostModel model);
  @POST("/getMessagesByUser.php")
  Future<MessageResponse> getMessage(@Query("id") String id);
  @GET("/getMessageDetail.php")
  Future<MessageDetailResponse> getMessageDetail(@Query("id") String id);
  @GET("/addMessage.php")
  Future<SendMessageResponse> sendMessage(@Body() SendMessagePost model);
  @GET("/updateUser.php")
  Future<UpdateProfileResponse> updateUser(@Body() UpdateUserModel model);
  @POST("/addFavorite.php")
  Future<AddFavoriteResponse> addFavorite(@Body() AddFavoritePost model);
}
