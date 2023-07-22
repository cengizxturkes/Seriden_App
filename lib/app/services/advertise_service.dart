import 'dart:io';

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
  image(List<File?> value){
    newAdvertiseModel.imageList=value;
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
}

class NewAdvertiseModel {
  CategoryModel? categoryModel;
  String title = "";
  String description = "";
  double price = 0;
  String name = "";
  String number = "";
  String cardNumber = "";
  String CardNameSurname = "";
  String LastUseTime = "";
  int CvCs = 0;
  List<File?> imageList=[];
}
