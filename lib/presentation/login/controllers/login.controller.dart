import 'package:banyuone/infrastructure/navigation/routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onHandleLogin() {
    Get.offAllNamed(Routes.HOME);
  }
}
