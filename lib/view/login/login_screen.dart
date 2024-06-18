import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/res/routes/route_names.dart';
import 'package:note_taker/utils/utils.dart';
import 'package:note_taker/view/login/widgets/email_field_widget.dart';
import 'package:note_taker/view/login/widgets/login_button.dart';
import 'package:note_taker/view/login/widgets/password_field_widget.dart';

import '../../../res/components/rounded_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade500,
          title: const Text(
            'User login',
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
                      EnterEmailField(),
                      const SizedBox(
                        height: 15,
                      ),
                      EnterPasswordField(),
                      const SizedBox(
                        height: 15,
                      )
                    ],
                  )),
              LoginButton(formKey: _formKey),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Don't have an account?"),
                  RoundedButton(
                    buttonColor: const Color(0x88668794),
                    width: 70,
                    height: 30,
                    text: 'Sign Up',
                    onTap: () {
                      Get.offNamed(RouteName.signupScreen);
                    },
                  )
                ],
              )
            ],
          ),
        ));
  }
}
