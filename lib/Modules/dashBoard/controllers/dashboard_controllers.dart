import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  var itemClickIndex = 0.obs;
  void readData() async {
    final ref = FirebaseDatabase.instance.ref();
    final snapshot = await ref.child('bins').get();
    if (snapshot.exists) {
      // print(snapshot.value);
    } else {
      print('No data available.');
    }
  }

  //
  @override
  void onInit() {
    super.onInit();
    //FirebaseDatabase Instance
    FirebaseDatabase database = FirebaseDatabase.instance;
    readData();

    // final ref = database.ref().child('bins').child('CURRENT_USER_ID');
  }
}
