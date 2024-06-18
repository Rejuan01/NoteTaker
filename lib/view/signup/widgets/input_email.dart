import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/utils/utils.dart';
import 'package:note_taker/view_model/controller/login_view_model.dart';
import 'package:note_taker/view_model/controller/signup_view_model.dart';

class InputEmailField extends StatelessWidget {
  InputEmailField({super.key});
  final SignupVMController controller = Get.find<SignupVMController>();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.emailController.value,
      focusNode: controller.emailFocusNode.value,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Enter email';
        }
        final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
        if (!emailRegex.hasMatch(value)) {
          return 'Enter a valid email';
        }
        return null;
      },
      onFieldSubmitted: (value) {
        Utils.fieldFocusChange(controller.emailFocusNode.value,
            controller.passwordFocusNode.value, context);
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          prefixIcon: Icon(Icons.email),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
    );
  }
}
