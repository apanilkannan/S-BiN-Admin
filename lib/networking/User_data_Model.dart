import 'package:cloud_firestore/cloud_firestore.dart';

class UserDataModel {
  final String name;
  final String email;
  final String phone;
  UserDataModel({required this.name, required this.email, required this.phone});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
    };
  }

  UserDataModel.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : name = doc.data()!["name"],
        email = doc.data()!["email"],
        phone = doc.data()!["phone"];
}
