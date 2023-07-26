import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../data/models/advertise_post_model/advertise_post_model.dart';
import '../data/models/advertise_post_model/advertise_response_model.dart';
part 'advertise_service_pm.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class AdvertiseServicePm {
  factory AdvertiseServicePm(Dio dio, {String baseUrl}) = _AdvertiseServicePm;

  @POST("/addAdvert.php")
  Future<AdvertiseResponseModel> postAdvertise(
      @Body() AdvertisePostModel model);
}
