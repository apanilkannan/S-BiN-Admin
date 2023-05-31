import 'package:get/get.dart';
import 'package:s_bin_admin/networking/databaseService.dart';

class UserScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    DatabaseService().getUser();
  }
}
