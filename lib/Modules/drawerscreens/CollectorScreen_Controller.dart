import 'package:get/get.dart';
import 'package:s_bin_admin/networking/databaseService.dart';

class CollectorScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();

    DatabaseService().getCollector();
  }
}
