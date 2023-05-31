import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:s_bin_admin/networking/authService.dart';

class DrawerScreenControllerController extends GetxController {
  final databaseref = FirebaseDatabase.instance.ref();

  void insertData(String fullname, String email, String password) {
    databaseref
        .child("users")
        .push()
        .set({"fullname": fullname, "email": email, "password": password});
  }

  @override
  void onInit() {
    super.onInit();
  }

  signUpUser() async {}
}
