import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../data/models/advertise_post_model/advertise_post_model.dart';
import '../data/models/advertise_post_model/advertise_response_model.dart';
import '../data/models/my_advertise/my_advertise_response.dart';
part 'advertise_service_pm.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class AdvertiseServicePm {
  factory AdvertiseServicePm(Dio dio, {String baseUrl}) = _AdvertiseServicePm;

  @POST("/addAdvert.php")
  Future<AdvertiseResponseModel> postAdvertise(
      @Body() AdvertisePostModel model);
  @GET("/getMyAdv_active.php?id=1")
  Future<MyAdveriseResponse> getMyAdv();
  @GET("/getAdvertsBySub.php")
  Future<MyAdveriseResponse> getAdvByCategory(@Query("id") int id);
}
