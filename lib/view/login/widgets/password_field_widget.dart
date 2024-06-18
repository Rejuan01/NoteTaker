import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/view_model/controller/login_view_model.dart';

class EnterPasswordField extends StatelessWidget {
  EnterPasswordField({super.key});
  final LoginVMController controller = Get.find<LoginVMController>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.passwordController.value,
      focusNode: controller.passwordFocusNode.value,
      validator: (value) {
        if (value!.length < 4) {
          return 'Password should be at least of 4 characters';
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Password',
          prefixIcon: Icon(Icons.lock),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
    );
  }
}
