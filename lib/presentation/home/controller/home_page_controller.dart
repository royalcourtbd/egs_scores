import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxBool menuButton = false.obs;

  void toggleMenuVisibility() {
    menuButton.value = !menuButton.value;
  }
}
