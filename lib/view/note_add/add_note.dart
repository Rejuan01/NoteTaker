import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:note_taker/view/note_add/widgets/make_note_button.dart';
import 'package:note_taker/view_model/controller/add_note_view_model.dart';

class AddNoteScreen extends StatelessWidget {
  AddNoteScreen({super.key, required this.email});
  final String email;
  final controller = Get.find<AddNoteViewModelController>();
  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal.shade100,
        appBar: AppBar(
          title: const Text(
            'Add a new note',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade300,
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(DateFormat.yMd().add_jm().format(now)),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: controller.noteTitleController.value,
                autofocus: true,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                    hintText: 'Note Title', hintStyle: TextStyle(fontSize: 22)),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                controller: controller.noteContentController.value,
                decoration: const InputDecoration(hintText: 'Note Content....'),
                maxLines: null,
              )
            ],
          ),
        ),
        floatingActionButton: MakeNoteButton(email: email));
  }
}
