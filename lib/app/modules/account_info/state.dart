import 'package:get/get.dart';

class AccountInfoState {
  // title
  final _title = "".obs;
  set title(value) => _title.value = value;
  get title => _title.value;
}
