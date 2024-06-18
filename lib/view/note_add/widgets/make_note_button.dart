import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/view_model/controller/add_note_view_model.dart';

class MakeNoteButton extends StatelessWidget {
  MakeNoteButton({super.key, required this.email});
  final String email;
  final addController = Get.find<AddNoteViewModelController>();
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        addController.addNote(email);
      },
      backgroundColor: Colors.blueGrey,
      child: const Icon(Icons.save),
    );
  }
}
