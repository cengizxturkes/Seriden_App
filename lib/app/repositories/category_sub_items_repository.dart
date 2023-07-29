import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../data/models/category/category_sub_responce.dart';
import '../data/models/sub_category/sub_category_prop_response.dart';
import '../services/category_sub_items_service.dart';

class CategorySubItemsRepository {
  CategorySubItemsService service = Get.find();

  RxList<Category> categories = RxList.empty();
  Future<List<Category>> getWithSubCategories() async {
    if (categories.isNotEmpty) return categories;
    var response = await service.getCategories();
    categories.addAll(response.data);
    return response.data;
  }

  Future<List<SubcategoryProp>> getCategoriesProp(String id) async {
    var response = await service.getCategoriesProp(id);
    return response.data;
  }
}
