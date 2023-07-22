import 'package:get/get.dart';

import '../../data/models/category.dart';

class AdvertiseState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;

  final categories=<CategoryModel>[];
}
