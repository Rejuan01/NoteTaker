import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/res/routes/route_names.dart';
import 'package:note_taker/view/signup/widgets/input_email.dart';
import 'package:note_taker/view/signup/widgets/input_password.dart';
import 'package:note_taker/view/signup/widgets/signup_button.dart';

import '../../res/components/rounded_button.dart';
import '../../utils/utils.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade500,
          title: const Text(
            'Create Account',
            style: TextStyle(fontSize: 24),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      InputEmailField(),
                      const SizedBox(
                        height: 15,
                      ),
                      InputPasswordField(),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  )),
              SignupButton(formKey: _formKey),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Already have an account?"),
                  RoundedButton(
                    buttonColor: const Color(0x88668794),
                    width: 70,
                    height: 30,
                    text: 'Log In',
                    onTap: () {
                      Get.offNamed(RouteName.loginScreen);
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
