import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_model/controller/note_reader_view_model.dart';

class TitleField extends StatelessWidget {
  TitleField({super.key});
  final controller = Get.find<NoteReaderViewModelController>();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.titleController.value,
      cursorColor: Colors.blueGrey.shade900,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
          hintText: 'Note Title',
          hintStyle: TextStyle(fontSize: 22),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 0.3, color: Colors.black)),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(width: 0.8, color: Colors.black))),
    );
  }
}
