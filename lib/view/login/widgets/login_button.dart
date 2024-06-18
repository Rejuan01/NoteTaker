import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/res/components/rounded_button.dart';
import 'package:note_taker/view_model/controller/login_view_model.dart';

class LoginButton extends StatelessWidget {
  LoginButton({super.key, required this.formKey});
  LoginVMController controller = Get.find<LoginVMController>();
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      height: 50,
      text: 'Login',
      onTap: () {
        if (formKey.currentState!.validate()) {
          controller.login();
        }
      },
    );
  }
}
