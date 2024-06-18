import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_model/controller/note_reader_view_model.dart';

class ContentField extends StatelessWidget {
  ContentField({super.key});
  final controller = Get.find<NoteReaderViewModelController>();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.contentController.value,
      cursorColor: Colors.blueGrey.shade800,
      decoration: const InputDecoration(
          hintText: 'Note Content....',
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(width: 0.2)),
          focusedBorder:
              UnderlineInputBorder(borderSide: BorderSide(width: 0.6))),
      maxLines: null,
    );
  }
}
