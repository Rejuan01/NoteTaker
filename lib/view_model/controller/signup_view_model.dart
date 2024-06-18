import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:note_taker/res/routes/route_names.dart';
import 'package:note_taker/utils/utils.dart';

import '../../data/repository/auth_repos/signup_repos.dart';

class SignupVMController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  final emailFocusNode = FocusNode().obs;
  final passwordFocusNode = FocusNode().obs;

  final _repos = SignupRepository();

  signup() async {
    await _repos
        .createUser(emailController.value.text, passwordController.value.text)
        .then(
      (value) {
        if (value != null) {
          Utils.snackBar('New account', 'Account created successfully');
          Get.offNamed(RouteName.noteListScreen,
              arguments: value.email.toString());
        }
      },
    );
  }
}
