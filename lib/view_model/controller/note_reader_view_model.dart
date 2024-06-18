import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:note_taker/utils/utils.dart';

class NoteReaderViewModelController extends GetxController {
  final titleController = TextEditingController().obs;
  final contentController = TextEditingController().obs;
  late DocumentReference docRef;
  final isDeleted = false.obs;

  void setInitialValue(QueryDocumentSnapshot doc) {
    titleController.value.text = doc['noteTitle'];
    contentController.value.text = doc['noteContent'];
    docRef = doc.reference;
  }

  deleteNote() async {
    try {
      await docRef.delete().then((value) {
        isDeleted.value = true;
        Get.back();
      });
    } catch (e) {
      Utils.toastWarning(e.toString());
    }
  }

  @override
  onClose() async {
    if (!isDeleted.value) {
      try {
        await docRef.update({
          //Updating without checking the change
          'noteTitle': titleController.value.text,
          'noteContent': contentController.value.text
        });
      } catch (e) {
        Utils.toastWarning(e.toString());
      }
    }
  }
}
