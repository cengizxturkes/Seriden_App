import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/models/advertise_post_model/advertise_post_model.dart';
import '../services/advertise_service_pm.dart';

class AdvertiseRepositoryPm {
  AdvertiseServicePm service = Get.find();
  // Future<List<AdvertisePostModel>> postAdvertise() async {
  //   var response = await service.postAdvertise();

  //   // postu veritabanına kaydet
  //   PostRepository repository = PostRepository();
  //   repository.savePost(response.data[0]);

  //   return response.data;
}
