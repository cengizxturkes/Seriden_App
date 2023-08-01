import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_skeleton/app/data/local/my_hive.dart';
import 'package:retrofit/http.dart';

import '../data/models/advertise_post_model/advertise_post_model.dart';
import '../data/models/advertise_post_model/advertise_response_model.dart';
import '../data/models/get_advertise/advertise_reponse.dart';
import '../data/models/login_response/login_response.dart';
import '../data/models/my_advertise/my_adv_passive_response.dart';
import '../data/models/my_advertise/my_advertise_response.dart';
part 'advertise_service_pm.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class AdvertiseServicePm {
  factory AdvertiseServicePm(Dio dio, {String baseUrl}) = _AdvertiseServicePm;

  @POST("/addAdvert.php")
  @MultiPart()
  Future<AdvertiseResponseModel> postAdvertise(
      @Part() String description,
      @Part() String title,
      @Part() int price,
      @Part() String user_id,
      @Part() String sub_cat_id,
      @Part() List<Map<String, dynamic>> properties,
      @Part(value: "image[]") List<MultipartFile> image);
  @GET("/getMyAdv_active.php")
  Future<MyAdveriseResponse> getMyAdv(@Query("id") String id);
  @GET("/getAdvertsBySub.php")
  Future<AdvertiseReponse> getAdvByCategory(@Query("id") String id);
  @GET("/getMyAdv_passive.php")
  Future<MyAdvPassiveResponse> getMyAdvPassive(@Query("id") String id);
  @GET("/getMyAdv_active.php")
  Future<AdvertiseReponse> getMyAdv_act(@Query("id") int id);
}

//servis.g.dart 57.satırda olmalı
// int index = 0;
//     properties.forEach((element) {
//       _data.fields.add(MapEntry("properties[$index][id]", element["id"]));
//       _data.fields.add(MapEntry("properties[$index][value]", element["value"]));
//       index++;
//     });