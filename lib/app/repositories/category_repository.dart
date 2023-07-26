import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/category/category_response.dart';
import 'package:getx_skeleton/app/services/category_service.dart';

class CategoryRepository {
  CategoryService service = Get.find();
  Future<List<Category>> getCategories() async {
    var response = await service.getCategories();
    return response.data;
  }
}
