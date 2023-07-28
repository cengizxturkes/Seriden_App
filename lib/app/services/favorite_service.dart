import 'package:dio/dio.dart';
import 'package:getx_skeleton/app/data/models/favorite/favorite_response.dart';
import 'package:retrofit/http.dart';
part 'favorite_service.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class FavoriteService {
  factory FavoriteService(Dio dio, {String baseUrl}) = _FavoriteService;

  @GET("/getFavoritesByUser.php")
  Future<FavoriteResponse> getFavorities(@Query("id") String id);
}
