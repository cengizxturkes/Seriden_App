import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/models/category/category_sub_responce.dart';
import '../services/category_sub_items_service.dart';

class CategorySubItemsRepository {
  CategorySubItemsService service = Get.find();
  Future<List<Category>> getWithSubCategories() async {
    var response = await service.getCategories();
    return response.data;
  }
}
