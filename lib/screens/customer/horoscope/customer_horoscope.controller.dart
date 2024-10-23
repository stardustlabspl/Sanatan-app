import 'package:get/get.dart';

class CustomerHoroscopeController extends GetxController {
  int currentIndex = 0;
  onselectionChanged(int index) {
    currentIndex = index;
    update();
  }
}
