import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../data/models/login_model/login_model.dart';
import '../data/models/message/message_response.dart';
import '../data/models/password_post_model/password_post_model.dart';
import '../data/models/password_post_model/password_response.dart';
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
  @GET("/getMessagesByUser.php")
  Future<MessageResponse> getMessageDetail(@Query("id") String id);
}