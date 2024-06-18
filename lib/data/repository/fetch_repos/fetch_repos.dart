import 'package:cloud_firestore/cloud_firestore.dart';

class FetchRepository {
  final String email;
  FetchRepository({required this.email});

  Future<QuerySnapshot> snapshot() async {
    return await FirebaseFirestore.instance
        .collection('Notes')
        .doc(email)
        .collection('notes')
        .get();
  }

  noteList() {
    try {
      final querySnapshot = FirebaseFirestore.instance
          .collection('Notes')
          .doc(email)
          .collection('notes')
          .snapshots();
    } catch (ex) {}
  }
}
