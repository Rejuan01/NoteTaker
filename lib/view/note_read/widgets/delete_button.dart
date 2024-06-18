import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/view_model/controller/note_reader_view_model.dart';

class DeleteNoteButton extends StatelessWidget {
  DeleteNoteButton({super.key});
  final controller = Get.find<NoteReaderViewModelController>();
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          controller.deleteNote();
        },
        icon: Icon(
          Icons.delete,
          size: 30,
          color: Colors.red.shade500,
        ));
  }
}
