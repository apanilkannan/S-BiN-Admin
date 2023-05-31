import 'package:get/get.dart';
import 'package:s_bin_admin/Modules/login/controllers/Login_Controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
