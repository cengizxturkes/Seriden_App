import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../data/models/login_model/login_model.dart';
import '../data/models/register_post_model/register_post_model.dart';
import '../data/models/register_response/register_response.dart';
part 'register_service.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class RegisterService {
  factory RegisterService(Dio dio, {String baseUrl}) = _RegisterService;

  @POST("/register.php")
  Future<RegisterResponse> register(@Body() RegisterPostModel model);
}
