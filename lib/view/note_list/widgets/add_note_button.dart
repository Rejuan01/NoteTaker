import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../res/routes/route_names.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        Get.toNamed(RouteName.addNoteScreen, arguments: email);
      },
      label: const Text('Add Note'),
      icon: const Icon(Icons.add),
      backgroundColor: Colors.blueGrey.shade500,
    );
  }
}
