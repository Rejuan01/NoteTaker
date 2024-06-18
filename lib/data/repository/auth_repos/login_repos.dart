import 'package:firebase_auth/firebase_auth.dart';
import 'package:note_taker/utils/utils.dart';

class LoginRepository {
  Future<User?> findUser(String email, password) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (ex) {
      Utils.toastWarning(ex.code.toString());
      return null;
    }
  }
}
