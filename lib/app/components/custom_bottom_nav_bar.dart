import 'package:get/get.dart';

class CustomBottomNavBarController {
  RxInt selectedIndex = 0.obs;
  setSelectedIndex(int index) {
    selectedIndex.value = index;
    selectedIndex.update((val) {});
  }

  bool isSelected(int index) {
    return selectedIndex.value == index;
  }
} 
