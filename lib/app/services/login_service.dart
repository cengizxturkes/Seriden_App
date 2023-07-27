import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../data/models/login_model/login_model.dart';
import '../data/models/login_response/login_response.dart';
part 'login_service.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class LoginService {
  factory LoginService(Dio dio, {String baseUrl}) = _LoginService;
  @POST("/login.php")
  Future<LoginResponse> loginwithemail(@Body() LoginModel model);
}
