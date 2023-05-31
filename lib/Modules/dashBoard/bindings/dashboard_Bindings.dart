import 'package:get/get.dart';
import 'package:s_bin_admin/Modules/dashBoard/controllers/dashboard_controllers.dart';

class DashBoardBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
  }
}
