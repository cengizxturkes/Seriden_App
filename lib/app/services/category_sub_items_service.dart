import 'package:dio/dio.dart';
import 'package:getx_skeleton/app/data/models/category/category_response.dart';
import 'package:retrofit/retrofit.dart';

import '../data/models/category/category_sub_responce.dart';
import '../data/models/sub_category/sub_category_prop_response.dart';
part 'category_sub_items_service.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class CategorySubItemsService {
  factory CategorySubItemsService(Dio dio, {String baseUrl}) =
      _CategorySubItemsService;

  @GET("/sub_categories.php")
  Future<CategorySubResponce> getCategories();
  @GET("/getProps.php")
  Future<SubCategoryPropResponse> getCategoriesProp(@Query("id") String id);
}
