import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:s_bin_admin/networking/Collector_Data_Model.dart';
import 'package:s_bin_admin/networking/User_data_Model.dart';

final FirebaseFirestore _db = FirebaseFirestore.instance;
RxList<UserDataModel> user = <UserDataModel>[].obs;
RxList<CollectorDataModel> collector = <CollectorDataModel>[].obs;

class DatabaseService {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<String?> addUser({
    required String name,
    required String email,
  }) async {
    try {
      print("calling collector");

      CollectionReference users =
          FirebaseFirestore.instance.collection('collector');
      // Call the user's CollectionReference to add a new user
      await users.doc(auth.currentUser!.uid).set({
        'name': name,
        'email': email,
      });
      return 'success';
    } catch (e) {
      return 'Error adding user';
    }
  }

  Future<List<UserDataModel>> getUser() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await _db
        .collection('users')
        /*.where("status",isEqualTo: status)*/ .get();
    var data = snapshot.docs
        .map((docSnapshot) => UserDataModel.fromDocumentSnapshot(docSnapshot))
        .toList();
    user.value = data;
    print("${user.length}");
    return data;
  }

  Future<List<CollectorDataModel>> getCollector() async {
    QuerySnapshot<Map<String, dynamic>> snapshot = await _db
        .collection('collector')
        /*.where("status",isEqualTo: status)*/ .get();
    var alldata = snapshot.docs
        .map((docSnapshot) =>
            CollectorDataModel.fromDocumentSnapshot(docSnapshot))
        .toList();
    collector.value = alldata;
    print("${user.length}");

    return alldata;
  }
}
