import 'package:get/get.dart';

class CustomerBaseClassController extends GetxController {
  int currentIndex = 0;

  onBottomNavigationChanged(int index) {
    currentIndex = index;
    update();
  }
}
