import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:note_taker/res/routes/route_names.dart';

class NoteListVMController extends GetxController {
  //final LoginVMController _loginVMController = Get.find<LoginVMController>();

  CollectionReference getReference(String email) {
    return FirebaseFirestore.instance
        .collection('Notes')
        .doc(email)
        .collection('notes');
  }

  logout() async {
    await FirebaseAuth.instance.signOut().then(
      (value) {
        Get.offAllNamed(RouteName.loginScreen);
      },
    );
  }
}
