import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:note_taker/data/repository/auth_repos/login_repos.dart';
import 'package:note_taker/res/routes/route_names.dart';
import 'package:note_taker/utils/utils.dart';

class LoginVMController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  final _repos = LoginRepository();

  login() async {
    await _repos
        .findUser(emailController.value.text, passwordController.value.text)
        .then(
      (value) {
        if (value != null) {
          Utils.snackBar('Login', 'Login successful');
          Get.offNamed(RouteName.noteListScreen,
              arguments: value.email.toString());
        }
      },
    );
  }
}
