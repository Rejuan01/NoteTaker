import 'package:firebase_auth/firebase_auth.dart';

import '../../../utils/utils.dart';

class SignupRepository {
  Future<User?> createUser(String email, password) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (ex) {
      Utils.toastWarning(ex.code.toString());
      return null;
    }
  }
}
