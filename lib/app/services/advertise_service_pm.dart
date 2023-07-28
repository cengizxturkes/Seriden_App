import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_skeleton/app/data/local/my_hive.dart';
import 'package:retrofit/http.dart';

import '../data/models/advertise_post_model/advertise_post_model.dart';
import '../data/models/advertise_post_model/advertise_response_model.dart';
import '../data/models/login_response/login_response.dart';
import '../data/models/my_advertise/my_adv_passive_response.dart';
import '../data/models/my_advertise/my_advertise_response.dart';
part 'advertise_service_pm.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class AdvertiseServicePm {
  factory AdvertiseServicePm(Dio dio, {String baseUrl}) = _AdvertiseServicePm;

  @POST("/addAdvert.php")
  Future<AdvertiseResponseModel> postAdvertise(
      @Body() AdvertisePostModel model);
  @GET("/getMyAdv_active.php")
  Future<MyAdveriseResponse> getMyAdv(@Query("id") String id);
  @GET("/getAdvertsBySub.php")
  Future<MyAdveriseResponse> getAdvByCategory(@Query("id") int id);
  @GET("/getMyAdv_passive.php")
  Future<MyAdvPassiveResponse> getMyAdvPassive(@Query("id") String id);
}
