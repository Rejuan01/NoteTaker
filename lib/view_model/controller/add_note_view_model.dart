import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AddNoteViewModelController extends GetxController {
  final noteTitleController = TextEditingController().obs;
  final noteContentController = TextEditingController().obs;

  addNote(String email) async {
    await FirebaseFirestore.instance
        .collection('Notes')
        .doc(email)
        .collection('notes')
        .add({
      'noteTitle': noteTitleController.value.text.toString(),
      'noteContent': noteContentController.value.text.toString(),
      'noteTime': DateFormat.yMd().add_jm().format(DateTime.now())
    }).then((value) => Get.back());
  }
}
