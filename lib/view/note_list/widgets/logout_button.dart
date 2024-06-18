import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/view_model/controller/note_list_vm.dart';

class LogoutButton extends StatelessWidget {
  LogoutButton({super.key});
  final controller = Get.find<NoteListVMController>();
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          controller.logout();
        },
        icon: Icon(Icons.logout));
  }
}
