import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/view/note_read/widgets/content_field.dart';
import 'package:note_taker/view/note_read/widgets/delete_button.dart';
import 'package:note_taker/view/note_read/widgets/title_field.dart';
import 'package:note_taker/view_model/controller/note_reader_view_model.dart';

class NoteReader extends StatelessWidget {
  final QueryDocumentSnapshot doc;
  final controller = Get.find<NoteReaderViewModelController>();

  NoteReader({super.key, required this.doc}) {
    controller.setInitialValue(doc);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [DeleteNoteButton()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(doc['noteTime']),
            ),
            const SizedBox(
              height: 20,
            ),
            TitleField(),
            const SizedBox(
              height: 8,
            ),
            ContentField()
          ],
        ),
      ),
    );
  }
}
