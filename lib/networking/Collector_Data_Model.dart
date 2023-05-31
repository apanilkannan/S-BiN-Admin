import 'package:cloud_firestore/cloud_firestore.dart';

class CollectorDataModel {
  final String name;
  final String email;

  CollectorDataModel({
    required this.name,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
    };
  }

  CollectorDataModel.fromDocumentSnapshot(
      DocumentSnapshot<Map<String, dynamic>> doc)
      : name = doc.data()!["name"],
        email = doc.data()!["email"];
}
