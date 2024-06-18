import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_taker/res/routes/route_names.dart';

class NoteCard extends StatelessWidget {
  NoteCard({super.key, required this.document});
  final QueryDocumentSnapshot document;
  //final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(RouteName.noteReaderScreen, arguments: document);
      },
      child: Container(
        height: double.minPositive,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade500,
            borderRadius: BorderRadius.circular(14)),
        child: Column(
          children: [
            Text(
              document['noteTitle'],
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              document['noteTime'],
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              document['noteContent'],
              style: const TextStyle(fontSize: 18),
              overflow: TextOverflow.fade,
              maxLines: 3,
            )
          ],
        ),
      ),
    );
  }
}
