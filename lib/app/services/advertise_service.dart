
import '../data/models/category.dart';

class AdvertiseService {
  NewAdvertiseModel newAdvertiseModel = NewAdvertiseModel();

  void setCategory(CategoryModel categoryModel) {
    newAdvertiseModel.categoryModel = categoryModel;
  }

  void setTitle(String title) {
    newAdvertiseModel.title = title;
  }

  void clear() {
    newAdvertiseModel = NewAdvertiseModel();
  }

  Future<bool> save() async {
    //TODO: servise gönder -> POST işlemi
    return true;
  }

  setDescription(String value) {
    newAdvertiseModel.description = value;
  }

  setPrice(String value) {
    newAdvertiseModel.price = double.tryParse(value) ?? 0;
  }
}

class NewAdvertiseModel {
  CategoryModel? categoryModel;
  String title = "";
  String description = "";
  double price = 0;
}
