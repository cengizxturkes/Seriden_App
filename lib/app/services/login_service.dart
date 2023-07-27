import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../data/models/login_model/login_model.dart';
import '../data/models/login_response/login_response.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class LoginService {
  @POST("/login.php")
  Future<LoginResponse> postAdvertise(@Body() LoginModel model);
}
