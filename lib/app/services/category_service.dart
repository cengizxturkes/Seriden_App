import 'package:dio/dio.dart';
import 'package:getx_skeleton/app/data/models/category/category_response.dart';
import 'package:retrofit/retrofit.dart';
part 'category_service.g.dart';

@RestApi(baseUrl: "https://bekatos.com/seriden_api")
abstract class CategoryService {
  factory CategoryService(Dio dio, {String baseUrl}) = _CategoryService;

  @GET("/categories.php")
  Future<CategoryResponse> getCategories();
}
