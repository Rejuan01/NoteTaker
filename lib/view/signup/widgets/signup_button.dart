import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/view_model/controller/signup_view_model.dart';
import '../../../res/components/rounded_button.dart';
import '../../../utils/utils.dart';

class SignupButton extends StatelessWidget {
  SignupButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  final signupController = Get.find<SignupVMController>();
  @override
  Widget build(BuildContext context) {
    return RoundedButton(
      height: 50,
      text: 'Signup',
      onTap: () {
        if (formKey.currentState!.validate()) {
          signupController.signup();
        }
      },
    );
  }
}
