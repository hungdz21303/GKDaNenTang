import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethod {
  Future addSP(Map<String, dynamic> spInfoMap, String id) async {
    return await FirebaseFirestore.instance
        .collection("Sanpham")
        .doc(id)
        .set(spInfoMap);
  }

  Future<Stream<QuerySnapshot>> getSanpham() async {
    return await FirebaseFirestore.instance.collection("Sanpham").snapshots();
  }

  deleteSP(String id) async {
    return await FirebaseFirestore.instance
        .collection("Sanpham")
        .doc(id)
        .delete();
  }
}
