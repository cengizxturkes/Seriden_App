import 'dart:io';

import 'package:get/get.dart';

import '../data/models/advertise_post_model/advertise_post_model.dart';
import '../data/models/category.dart';
import '../data/models/category/category_sub_responce.dart';
import '../data/models/sub_category/sub_category_prop_response.dart';
import 'adverise_pm_repository.dart';
import '../services/advertise_service_pm.dart';

class AdvertiseRepository {
  NewAdvertiseModel newAdvertiseModel = NewAdvertiseModel();
  AdvertiseRepositoryPm advertiseRepositoryPm = AdvertiseRepositoryPm();
  AdvertiseServicePm advertiseServicePm = Get.find();

  List<AdvModel> props = [];
  void setCategory(Subcategory categoryModel) {
    newAdvertiseModel.categoryModel = categoryModel;
  }

  void setTitle(String title) {
    newAdvertiseModel.title = title;
  }

  void clear() {
    newAdvertiseModel = NewAdvertiseModel();
  }

  Future<bool> save() async {
    var deneme = AdvertisePostModel(
      title: newAdvertiseModel.title,
      description: newAdvertiseModel.description,
      price: newAdvertiseModel.price.toInt(),
      userId: 1,
      subCatId: 1,
    );

    var response = await advertiseServicePm.postAdvertise(deneme);
    return response.status == 1;
  }

  setDescription(String value) {
    newAdvertiseModel.description = value;
  }

  setPrice(String value) {
    newAdvertiseModel.price = double.tryParse(value) ?? 0;
  }

  image(List<File?> value) {
    newAdvertiseModel.imageList = value;
  }

  setName(String value) {
    newAdvertiseModel.name = value;
  }

  setNumber(String value) {
    newAdvertiseModel.number = value;
  }

  CardNumber(String value) {
    newAdvertiseModel.cardNumber = value;
  }

  CardNameSurname(String value) {
    newAdvertiseModel.CardNameSurname = value;
  }

  LastUseTime(String value) {
    newAdvertiseModel.LastUseTime = value;
  }

  CvCs(String value) {
    newAdvertiseModel.CvCs = int.tryParse(value) ?? 0;
  }

  AdvModel getPropValue(SubcategoryProp prop) {
    var propValue = props.where((element) => element.id == prop.id).firstOrNull;

    if (propValue == null) {
      propValue = AdvModel()
        ..id = prop.id
        ..cat_id = prop.catId
        ..description = "";
      props.add(propValue);
    }
    return propValue;
  }
}

class NewAdvertiseModel {
  Subcategory? categoryModel;
  String title = "";
  String description = "";
  double price = 0;
  String name = "";
  String number = "";
  String cardNumber = "";
  String CardNameSurname = "";
  String LastUseTime = "";
  int CvCs = 0;
  List<File?> imageList = [];
}

class AdvModel {
  String id = "";
  String cat_id = "";
  String description = "";
}
